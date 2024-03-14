# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_project
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    09-05-2022 15:36:10
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_project'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_project" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_project";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_username" varchar(50) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_username", "admin_password") VALUES
	('1','admin@gmail.com','admin');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_analyser'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_analyser" (
  "analyser_id" int(10) unsigned NOT NULL auto_increment,
  "analyser_name" varchar(50) NOT NULL,
  "analyser_contact" varchar(50) NOT NULL,
  "analyser_email" varchar(50) NOT NULL,
  "analyser_address" varchar(50) NOT NULL,
  "place_id" varchar(50) NOT NULL,
  "analyser_photo" varchar(50) NOT NULL,
  "analyser_proof" varchar(50) NOT NULL,
  "analyser_status" varchar(50) NOT NULL default '0',
  "analyser_password" varchar(50) NOT NULL,
  "analyser_doj" varchar(50) NOT NULL,
  PRIMARY KEY  ("analyser_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_analyser'
#

LOCK TABLES "tbl_analyser" WRITE;
/*!40000 ALTER TABLE "tbl_analyser" DISABLE KEYS;*/
REPLACE INTO "tbl_analyser" ("analyser_id", "analyser_name", "analyser_contact", "analyser_email", "analyser_address", "place_id", "analyser_photo", "analyser_proof", "analyser_status", "analyser_password", "analyser_doj") VALUES
	('2','ALBIN_MATHEW','7559879734','albinmathew317@gmail.com','kumminiyil','123456','analysphoto_1594.jpg','analysproof_1767.jpg','1','12345','2022-02-10');
/*!40000 ALTER TABLE "tbl_analyser" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_brand'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_brand" (
  "brand_id" int(10) unsigned NOT NULL auto_increment,
  "brand_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("brand_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_brand'
#

LOCK TABLES "tbl_brand" WRITE;
/*!40000 ALTER TABLE "tbl_brand" DISABLE KEYS;*/
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('2','Honda');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('3','Yamaha');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('4','Bajaj');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('5','TVS');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('6','Suzuki');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('7','Hero');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('8','Royal Enfield');
REPLACE INTO "tbl_brand" ("brand_id", "brand_name") VALUES
	('9','KTM');
/*!40000 ALTER TABLE "tbl_brand" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_chat'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_chat" (
  "chat_id" int(10) unsigned NOT NULL auto_increment,
  "chat_date" varchar(50) NOT NULL,
  "from_user_id" varchar(50) default '0',
  "to_user_id" int(10) unsigned default '0',
  "from_seller_id" int(10) unsigned NOT NULL default '0',
  "to_seller_id" int(10) unsigned NOT NULL default '0',
  "chat_content" varchar(500) NOT NULL,
  PRIMARY KEY  ("chat_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_chat'
#

LOCK TABLES "tbl_chat" WRITE;
/*!40000 ALTER TABLE "tbl_chat" DISABLE KEYS;*/
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('4','May 09 2022, 03:16 PM','1','0','0','4','aaa');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('6','May 09 2022, 03:19 PM','1','0','0','4','as');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('7','May 09 2022, 03:20 PM','1','0','0','4','as');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('8','May 09 2022, 03:20 PM','1','0','0','4','as');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('9','May 09 2022, 03:20 PM','1','0','0','4','');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('10','May 09 2022, 03:22 PM','0','1','4','0','hai');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('11','May 09 2022, 03:32 PM','0','1','4','0','aa');
REPLACE INTO "tbl_chat" ("chat_id", "chat_date", "from_user_id", "to_user_id", "from_seller_id", "to_seller_id", "chat_content") VALUES
	('12','May 09 2022, 03:32 PM','0','1','4','0','');
/*!40000 ALTER TABLE "tbl_chat" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(50) NOT NULL auto_increment,
  "complaint_description" varchar(50) NOT NULL,
  "user_id" varchar(50) NOT NULL default '0',
  "analyser_id" varchar(50) NOT NULL default '0',
  "seller_id" varchar(50) NOT NULL default '0',
  "complaint_date" varchar(50) NOT NULL,
  "complaint_reply" varchar(50) default 'Not Yet Replied',
  "complaint_status" varchar(50) NOT NULL default '0',
  "reply_date" varchar(50) NOT NULL default '---',
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_description", "user_id", "analyser_id", "seller_id", "complaint_date", "complaint_reply", "complaint_status", "reply_date") VALUES
	(1,'bad','1','0','0','2022-03-24','dwe','1','2022-03-24');
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_description", "user_id", "analyser_id", "seller_id", "complaint_date", "complaint_reply", "complaint_status", "reply_date") VALUES
	(2,'waw','1','0','0','2022-03-24','Not Yet Replied','0','---');
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_displacement'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_displacement" (
  "displacement_id" int(10) unsigned NOT NULL auto_increment,
  "displacement_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("displacement_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_displacement'
#

LOCK TABLES "tbl_displacement" WRITE;
/*!40000 ALTER TABLE "tbl_displacement" DISABLE KEYS;*/
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('2','100 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('3','125 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('4','150 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('5','200 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('6','160 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('7','250 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('8','350 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('9','400 cc');
REPLACE INTO "tbl_displacement" ("displacement_id", "displacement_name") VALUES
	('10','500 cc');
/*!40000 ALTER TABLE "tbl_displacement" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('1','Ernakulam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('3','idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('4','Kottayam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('5','Alappuzha');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('6','Thrissure');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('7','Thiruvananthapuram');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('8','Kollam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('9','Pathanamthitta');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('10','Palakkad');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(10) unsigned NOT NULL auto_increment,
  "feedback_description" varchar(50) NOT NULL,
  "user_id" varchar(50) NOT NULL default '0',
  "seller_id" varchar(50) NOT NULL default '0',
  "analyser_id" varchar(50) NOT NULL default '0',
  "feedback_date" varchar(50) NOT NULL,
  PRIMARY KEY  ("feedback_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_feedback'
#

LOCK TABLES "tbl_feedback" WRITE;
/*!40000 ALTER TABLE "tbl_feedback" DISABLE KEYS;*/
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "user_id", "seller_id", "analyser_id", "feedback_date") VALUES
	('8','good','1','0','0','2022-03-24');
/*!40000 ALTER TABLE "tbl_feedback" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_newvehicle'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_newvehicle" (
  "vehicle_id" int(10) unsigned NOT NULL auto_increment,
  "vehicle_name" varchar(50) NOT NULL,
  "type_id" varchar(50) NOT NULL,
  "displacement_id" varchar(50) NOT NULL,
  "vehicle_photo" varchar(50) NOT NULL,
  "vehicle_price" varchar(50) NOT NULL,
  "vehicle_transmission" varchar(50) NOT NULL,
  "vehicle_power" varchar(50) NOT NULL,
  "vehicle_torque" varchar(50) NOT NULL,
  "vehicle_maxspeed" varchar(50) NOT NULL,
  "vehicle_fueltank" varchar(50) NOT NULL,
  "vehicle_weight" varchar(50) NOT NULL,
  "vehicle_height" varchar(50) NOT NULL,
  "brand_id" varchar(50) NOT NULL,
  "vehicle_date" varchar(50) NOT NULL,
  "vehicle_mileage" varchar(50) NOT NULL,
  PRIMARY KEY  ("vehicle_id")
) AUTO_INCREMENT=12;



#
# Dumping data for table 'tbl_newvehicle'
#

LOCK TABLES "tbl_newvehicle" WRITE;
/*!40000 ALTER TABLE "tbl_newvehicle" DISABLE KEYS;*/
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('1','Appache RTR 160 4V','5','4','photo_2102.jpeg','112,613','5 ','17.39 bhp','14.73 Nm','114 Km/h','12 L','145 Kg','800 mm','5','2022-02-25','45 kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('2','Himalayan','8','9','photo_1524.jpeg','214,869','5','24.3 bhp','32 Nm','145 Kmph','15 L','199 Kg','800 mm','8','2022-02-25','30 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('3','Classic 350','7','8','photo_1269.jpeg','187,360','5','20.2 bhp','27 Nm','114 Km/h','13 L','195 Kg','800 mm','8','2022-02-27','35 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('4','Dio','4','2','photo_1640.jpeg','93,432','Automatic','7.65 bhp','9 Nm','83 Km/h','5.3 L','105 Kg','650 mm','2','2022-02-27','50 kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('5','Duke 200','6','5','photo_1572.jpeg','227,944','6','25.4 bhp','19.5 Nm','142 Kmpl','13.5 L','159 Kg','822 mm','9','2022-02-27','35 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('6','MT 15','6','4','photo_1025.jpg','149,000','6','19 bhp','13.9 Nm','130 Km/h','10 L','138 Kg','810 mm','3','2022-02-27','52 kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('7','SP  125','5','3','photo_1949.jpeg','110,000','5','10.7 bhp','10.7 Nm','105','11 L','124 Kg','800 mm','2','2022-02-27','65 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('8','CB Unicorn','5','4','photo_1698.jpeg','121,644','5','12.73 bhp','14 Nm','106 Kmph','13 L','140 Kg','798 mm','2','2022-03-23','60 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('9','Pulsar NsS 160','6','4','photo_2040.jpg','136,607','5','17.03 bhp','14.6 Nm','111 Kmph','12 L','151 Kg','805 mm','4','2022-03-23','45 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('10','Activa 125','4','3','photo_2032.jpeg','98,512','Automatic','8.18 bhp','10.3 Nm','85 Kmph','5.3 L','111 Kg','765 mm','2','2022-03-23','55 Kmpl');
REPLACE INTO "tbl_newvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "vehicle_photo", "vehicle_price", "vehicle_transmission", "vehicle_power", "vehicle_torque", "vehicle_maxspeed", "vehicle_fueltank", "vehicle_weight", "vehicle_height", "brand_id", "vehicle_date", "vehicle_mileage") VALUES
	('11','Ntorq 125','4','3','photo_1856.jpeg','110,000','Automatic','9.25 bhp','10.5 Nm','98 Kmph','5.8 L','118 Kg','770 mm','5','2022-03-23','47 Kmpl');
/*!40000 ALTER TABLE "tbl_newvehicle" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_payment'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_payment" (
  "payment_id" int(10) unsigned NOT NULL auto_increment,
  "user_id" varchar(50) NOT NULL,
  "vehicle_id" varchar(50) NOT NULL,
  "payment_status" varchar(50) NOT NULL default '0',
  "request_status" varchar(50) NOT NULL default '0',
  "payment_date" varchar(50) NOT NULL default '0',
  "payment_amount" varchar(50) NOT NULL default '0',
  "request_date" varchar(50) NOT NULL,
  PRIMARY KEY  ("payment_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_payment'
#

LOCK TABLES "tbl_payment" WRITE;
/*!40000 ALTER TABLE "tbl_payment" DISABLE KEYS;*/
REPLACE INTO "tbl_payment" ("payment_id", "user_id", "vehicle_id", "payment_status", "request_status", "payment_date", "payment_amount", "request_date") VALUES
	('14','1','7','0','0','0','0','2022-03-25');
REPLACE INTO "tbl_payment" ("payment_id", "user_id", "vehicle_id", "payment_status", "request_status", "payment_date", "payment_amount", "request_date") VALUES
	('15','1','7','0','0','0','0','2022-05-09');
REPLACE INTO "tbl_payment" ("payment_id", "user_id", "vehicle_id", "payment_status", "request_status", "payment_date", "payment_amount", "request_date") VALUES
	('16','1','7','0','0','0','0','2022-05-09');
/*!40000 ALTER TABLE "tbl_payment" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(10) unsigned NOT NULL auto_increment,
  "place_name" varchar(50) NOT NULL,
  "district_id" varchar(50) NOT NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('1','Moovattupuzha','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('2','Angamali','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('3','Kochi','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('4','Perumpavoor','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('5','Aluva','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('6','Thodupuzha','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('7','Moolamattom','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('8','Cheruthoni','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('9','Adimali','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('10','Moonnar','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('11','Kattappana','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('12','Pala','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('13','Aruvithura','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('14','Melukavu','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('16','Kanjirappally','4');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_rating'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_rating" (
  "rating_id" int(10) unsigned NOT NULL auto_increment,
  "rating_value" varchar(50) NOT NULL,
  "rating_description" varchar(50) NOT NULL,
  "user_id" varchar(50) NOT NULL,
  "seller_id" varchar(50) NOT NULL,
  "analyser_id" varchar(50) NOT NULL,
  PRIMARY KEY  ("rating_id")
);



#
# Dumping data for table 'tbl_rating'
#

# No data found.



#
# Table structure for table 'tbl_review'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_review" (
  "review_id" int(10) unsigned NOT NULL auto_increment,
  "review_description" varchar(50) NOT NULL,
  "analyser_id" varchar(50) NOT NULL,
  "review_date" varchar(50) NOT NULL,
  "review_caption" varchar(50) NOT NULL default 'REVIEW',
  PRIMARY KEY  ("review_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_review'
#

LOCK TABLES "tbl_review" WRITE;
/*!40000 ALTER TABLE "tbl_review" DISABLE KEYS;*/
REPLACE INTO "tbl_review" ("review_id", "review_description", "analyser_id", "review_date", "review_caption") VALUES
	('1','good ','2','2022-05-07','REVIEW');
REPLACE INTO "tbl_review" ("review_id", "review_description", "analyser_id", "review_date", "review_caption") VALUES
	('2','good ','2','2022-05-07','REVIEW');
/*!40000 ALTER TABLE "tbl_review" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_seller'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_seller" (
  "seller_id" int(10) unsigned NOT NULL auto_increment,
  "seller_name" varchar(20) NOT NULL,
  "seller_contact" varchar(50) NOT NULL,
  "seller_email" varchar(50) NOT NULL,
  "seller_address" varchar(50) NOT NULL,
  "seller_photo" varchar(50) NOT NULL,
  "seller_proof" varchar(50) NOT NULL,
  "place_id" varchar(50) NOT NULL,
  "seller_status" varchar(50) NOT NULL default '0',
  "seller_doj" varchar(50) NOT NULL,
  "seller_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("seller_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_seller'
#

LOCK TABLES "tbl_seller" WRITE;
/*!40000 ALTER TABLE "tbl_seller" DISABLE KEYS;*/
REPLACE INTO "tbl_seller" ("seller_id", "seller_name", "seller_contact", "seller_email", "seller_address", "seller_photo", "seller_proof", "place_id", "seller_status", "seller_doj", "seller_password") VALUES
	('4','jose','9847753462','jose@gmail.com','velliyamattom po arakulam','sellerphoto_1590.jpg','sellerproof_1399.jpg','3','1','2022-02-19','123456');
REPLACE INTO "tbl_seller" ("seller_id", "seller_name", "seller_contact", "seller_email", "seller_address", "seller_photo", "seller_proof", "place_id", "seller_status", "seller_doj", "seller_password") VALUES
	('5','Albin','7559879734','itsalbinmathew@gmail.com','Kumminiyil Edad po moolamattom','sellerphoto_1881.jpg','sellerproof_1385.jpg','3','2','2022-03-25','Albin');
/*!40000 ALTER TABLE "tbl_seller" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_type'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_type" (
  "type_id" int(10) unsigned NOT NULL auto_increment,
  "type_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("type_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_type'
#

LOCK TABLES "tbl_type" WRITE;
/*!40000 ALTER TABLE "tbl_type" DISABLE KEYS;*/
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('4','Scooter');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('5','Commuter Bike');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('6','Sports Bike');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('7','Cruiser');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('8','Adventure');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('9','Maxi Scooter');
/*!40000 ALTER TABLE "tbl_type" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_usedvehicle'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_usedvehicle" (
  "vehicle_id" int(10) unsigned NOT NULL auto_increment,
  "vehicle_name" varchar(50) NOT NULL,
  "type_id" varchar(50) NOT NULL,
  "displacement_id" varchar(50) NOT NULL,
  "brand_id" varchar(50) NOT NULL,
  "vehicle_photo" varchar(50) NOT NULL,
  "vehicle_rc" varchar(50) NOT NULL,
  "vehicle_status" varchar(50) NOT NULL default '0',
  "vehicle_date" varchar(50) NOT NULL,
  "vehicle_price" varchar(50) NOT NULL,
  "vehicle_year" varchar(50) NOT NULL,
  "vehicle_audometer" varchar(50) NOT NULL,
  "seller_id" int(30) unsigned default NULL,
  PRIMARY KEY  ("vehicle_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_usedvehicle'
#

LOCK TABLES "tbl_usedvehicle" WRITE;
/*!40000 ALTER TABLE "tbl_usedvehicle" DISABLE KEYS;*/
REPLACE INTO "tbl_usedvehicle" ("vehicle_id", "vehicle_name", "type_id", "displacement_id", "brand_id", "vehicle_photo", "vehicle_rc", "vehicle_status", "vehicle_date", "vehicle_price", "vehicle_year", "vehicle_audometer", "seller_id") VALUES
	('7','dio','4','2','2','photo_2088.jpg','rc_1863.jpg','0','2022-03-25','43000','2017','35000','4');
/*!40000 ALTER TABLE "tbl_usedvehicle" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(10) unsigned NOT NULL auto_increment,
  "user_name" varchar(50) NOT NULL,
  "user_contact" varchar(50) NOT NULL,
  "user_email" varchar(50) NOT NULL,
  "user_address" varchar(50) NOT NULL,
  "place_id" varchar(50) NOT NULL,
  "user_photo" varchar(50) NOT NULL,
  "user_proof" varchar(50) NOT NULL,
  "user_doj" varchar(50) NOT NULL,
  "user_password" varchar(50) NOT NULL,
  "user_status" varchar(50) NOT NULL default '0',
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "place_id", "user_photo", "user_proof", "user_doj", "user_password", "user_status") VALUES
	('1','Albi','9568686868','albinmathew317@gmail.com','qerqwrwqrwef','12345','userphoto_1372.jpg','proof_1738.jpg','2022-02-09','112233','1');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "place_id", "user_photo", "user_proof", "user_doj", "user_password", "user_status") VALUES
	('2','ben','9568686868','albinmathew317@gmail.com','dyfif','123456','userphoto_1652.jpg','proof_1711.jpg','2022-02-09','123456','1');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "place_id", "user_photo", "user_proof", "user_doj", "user_password", "user_status") VALUES
	('3','kkll123556','7559879734','albiiin@gmail.com','hgwcbwc7wycgwb','123456','userphoto_1150.jpg','proof_1511.png','2022-04-12','123456','0');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vg'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vg" (
  "vg_id" int(10) unsigned NOT NULL auto_increment,
  "vg_caption" varchar(50) NOT NULL,
  "usedvehicle_id" varchar(50) NOT NULL default '0',
  "newvehicle_id" varchar(50) NOT NULL default '0',
  "vg_image" varchar(50) NOT NULL,
  PRIMARY KEY  ("vg_id")
);



#
# Dumping data for table 'tbl_vg'
#

# No data found.

/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
