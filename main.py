import random
import config
import telebot
import utils
from SQLighter import SQLighter
from telebot import types

bot = telebot.TeleBot(config.token)


@bot.message_handler(commands=['start'])
def game(message):
    # Подключаемся к БД
    db_worker = SQLighter(config.database_name)
    # Получаем случайную строку из БД
    row = db_worker.select_primarchs(random.randint(1, utils.get_rows_count()))
    # Формируем разметку
    markup = utils.generate_markup(row[2], row[3])
    # Отправляем аудиофайл с вариантами ответа
    bot.send_photo(message.chat.id, row[1], reply_markup=markup)
    # Включаем "игровой режим"
    utils.set_user_game(message.chat.id, row[2])
    # Отсоединяемся от БД
    db_worker.close()


@bot.message_handler(func=lambda message: True, content_types=['text'])
def check_answer(message):
    # Если функция возвращает None -> Человек не в игре
    answer = utils.get_answer_for_user(message.chat.id)
    # Как Вы помните, answer может быть либо текст, либо None
    # Если None:
    if not answer:
        bot.send_message(message.chat.id, 'Чтобы начать игру, выберите команду /start')
    else:
        # Уберем клавиатуру с вариантами ответа.
        keyboard_hider = types.ReplyKeyboardRemove()
        # Если ответ правильный/неправильный
        if message.text == '/stop':
            bot.send_message(message.chat.id, 'Спасибо за игру!', reply_markup=keyboard_hider)
            utils.finish_user_game(message.chat.id)
        else:
            if message.text == answer:
                bot.send_message(message.chat.id, 'Верно!', reply_markup=keyboard_hider)
                print(message.from_user.username + ' угадал ' + answer)
            else:
                bot.send_message(message.chat.id, 'Увы, Вы не угадали. Это ' + answer + '. Попробуйте ещё раз!',
                                 reply_markup=keyboard_hider)
                print(message.from_user.username + ' не угадал ' + answer + '(' + message.text + ')')
            # Удаляем юзера из хранилища (игра закончена)
            utils.finish_user_game(message.chat.id)
            game(message)


if __name__ == '__main__':
    utils.count_rows()
    random.seed()
    bot.infinity_polling()
