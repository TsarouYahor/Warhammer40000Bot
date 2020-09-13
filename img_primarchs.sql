BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "img_primarchs" (
	"ID"	INTEGER NOT NULL UNIQUE,
	"file_id"	TEXT NOT NULL,
	"right_answer"	TEXT NOT NULL,
	"wrong_answers"	TEXT,
	PRIMARY KEY("ID")
);
INSERT INTO "img_primarchs" VALUES (1,'AgACAgIAAxkDAANpX1vxVEmUjKnsW_ZAGoemHcVy1pkAAvOtMRscHOBKVhLXiJBG3vGNommWLgADAQADAgADbQADb2MBAAEbBA','Lion El''Jonson','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (2,'AgACAgIAAxkDAANrX1vxWJG-LZFaAiHJJGGOwNodwkAAAvatMRscHOBKoxeOv9UBVTMZkSGVLgADAQADAgADbQADrAYEAAEbBA','Ferrus Manus','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (3,'AgACAgIAAxkDAANtX1vxW3gCA1IFW6irF91_Ehdnf7AAAvetMRscHOBKDQNR_kitXFPvQgWXLgADAQADAgADbQADdnYAAhsE','Angron','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (4,'AgACAgIAAxkDAANvX1vxXsOBuIJ0Xt37MvLXqa02raoAAvitMRscHOBKBIHb-ba20kLpBp-WLgADAQADAgADbQADamUBAAEbBA','Roboute Guilliman','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (5,'AgACAgIAAxkDAANxX1vxYjP6673XU7JEA2Yh_IRDVY4AAvmtMRscHOBKDlzjAAHF9t2D_6Z0ly4AAwEAAwIAA20AA0aWAAIbBA','Corvus Corax','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (6,'AgACAgIAAxkDAANzX1vxZlTHkXHkC-qzvoAgT0JflP8AAvqtMRscHOBK0QnnrOGjkARuUPWULgADAQADAgADbQADRHUEAAEbBA','Magnus Red','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (7,'AgACAgIAAxkDAAN1X1vxaXhmfGwWRdcNCmelWfcZofQAAvutMRscHOBKVZAzMWJkLBA2FVOXLgADAQADAgADbQAD480AAhsE','Horus Lupercal','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (8,'AgACAgIAAxkDAAN3X1vxbcJMuvrA3N0tpMwwBQRLJiAAAvytMRscHOBKftbmZMSr9MBtEEiWLgADAQADAgADbQADJ9YBAAEbBA','Lorgar Aurelian','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (9,'AgACAgIAAxkDAAN5X1vxcCvWsn2Zh4czeAhOlMS3JDsAAv2tMRscHOBKTlRCjEKNAnLKk-WXLgADAQADAgADbQADmYYAAhsE','Vulkan','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (10,'AgACAgIAAxkDAAN9X1vxd821U7tNILFFpZWwMckXemIAAv-tMRscHOBKgj29_l_kSFsMnKOWLgADAQADAgADbQAD5GUBAAEbBA','Alpharius Omegon','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (11,'AgACAgIAAxkDAAN_X1vxeryTuHU0hxjDNoLvIWBTJEoAA64xGxwc4EpeWAkuoqQvqC4XU5cuAAMBAAMCAANtAANkzAACGwQ','Fulgrim','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (12,'AgACAgIAAxkDAAOBX1vxfgKNwor74PiWKER43LkOKL0AAgGuMRscHOBKm1wutMbsmkGhPFyXLgADAQADAgADbQADnpYAAhsE','Perturabo','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (13,'AgACAgIAAxkDAAODX1vxgcLuTE25U08pFT-Ip5UEDoYAAgKuMRscHOBKLXOsruaVryh0qleXLgADAQADAgADbQAD8ooAAhsE','Jaghatai Khan','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (14,'AgACAgIAAxkDAAOFX1vxhfniqc8jyusoi3fawjTF8d8AAgOuMRscHOBKzDl87b7zo7E1AAFFli4AAwEAAwIAA20AAznYAQABGwQ','Leman Russ','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (15,'AgACAgIAAxkDAAOHX1vxiOM78WT5QcV5k1ixynCDedEAAgSuMRscHOBKGnhvVCXMlFUoLkSYLgADAQADAgADbQADkYQAAhsE','Rogal Dorn','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (16,'AgACAgIAAxkDAAOJX1vxjO-i4pG4dIvj_27BVW_EQxoAAgWuMRscHOBKYOoCi5F_eG1CNO2XLgADAQADAgADbQAD73EAAhsE','Konrad Curze','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (17,'AgACAgIAAxkDAAOLX1vxkLJzRK83geHsHvjfIoNmrw4AAgauMRscHOBKtVOiLCNHqckGnXGXLgADAQADAgADbQADUpcAAhsE','Sanguinius','test_1,test_2,test_3');
INSERT INTO "img_primarchs" VALUES (18,'AgACAgIAAxkDAAOWX1v2NPN3zwecn_BZ9MQ8z5hBtZwAAgmuMRscHOBKql2GT94Rgv34WxWVLgADAQADAgADbQADXAkEAAEbBA','Mortarion','test_1,test_2,test_3');
COMMIT;
