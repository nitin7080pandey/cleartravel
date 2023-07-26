DROP SCHEMA IF EXISTS flightbooking_db;



CREATE SCHEMA flightbooking_db;
USE schema flightbooking_db;

create table flight (
	flight_number VARCHAR(20) not null,
	airline VARCHAR(20) not null,
	weekdays BOOLEAN not null
);

INSERT INTO flight VALUES ('IN560',' Indigo', true);
INSERT INTO flight VALUES ('AA6624',' Air Asia', true);
INSERT INTO flight VALUES ('AI5841',' Air India', true);
INSERT INTO flight VALUES ('SJ1149',' SpiceJet', true);
INSERT INTO flight VALUES ('VI4529',' Vistara', false);
INSERT INTO flight VALUES ('VI4154',' Vistara', false);
INSERT INTO flight VALUES ('VI4155',' Vistara', false);
INSERT INTO flight VALUES ('AK48',' Akasha', false);
INSERT INTO flight VALUES ('GA1522',' GoAir', true);
INSERT INTO flight VALUES ('KF3472',' KingFisher', true);
INSERT INTO flight VALUES ('GI380',' GoIndia', true);

select * from flight

create table airport (
   airport_sr_id INT PRIMARY KEY ,
   airport_code VARCHAR(20) not null,
   airport_name VARCHAR(60) not null,
   airport_city VARCHAR(60) not null
   
);

INSERT INTO airport VALUES (1,'CCJ','Calicut International Airport','Calicut');
INSERT INTO airport VALUES (2,'MAA','Chennai International Airport','Chennai');
INSERT INTO airport VALUES (3,'BOM','Mumbai International Airport','Mumbai');
INSERT INTO airport VALUES (4,'COK','Cochin International Airport','Kochi');
INSERT INTO airport VALUES (5,'GOI','Dabolim Airport','Vasco da Gama');
INSERT INTO airport VALUES (6,'DEL','Indira Gandhi International Airport','New Delhi');
INSERT INTO airport VALUES (7,'BLR','Kempegowda International Airport','Bangalore');
INSERT INTO airport VALUES (8,'CCU','Netaji Subhash Chandra Bose International Airport','Kolkata');
INSERT INTO airport VALUES (9,'HYD','Rajiv Gandhi International Airport','Hyderabad');
INSERT INTO airport VALUES (10,'ATQ','Sri Guru Ram Dass Jee International Airport','Amritsar');
INSERT INTO airport VALUES (11,'TRV','Trivandrum International Airport','Thiruvananthapuram');
INSERT INTO airport VALUES (12,'IXA','Agartala Airport','Agartala');
INSERT INTO airport VALUES (13,'AGX','Agatti Airport','Agatti');
INSERT INTO airport VALUES (14,'AGR','Agra Airport','Agra');
INSERT INTO airport VALUES (15,'AKD','Akola Airport','Akola');
INSERT INTO airport VALUES (16,'IXD','Allahabad Airport','Allahabad');
INSERT INTO airport VALUES (17,'IXV','Along Airport','Arunachal Pradesh');
INSERT INTO airport VALUES (18,'HGI','Donyi Polo Airport','Itanagar');
INSERT INTO airport VALUES (19,'IXU','Aurangabad Airport','Aurangabad');
INSERT INTO airport VALUES (20,'IXB','Bagdogra Airport','Siliguri');
INSERT INTO airport VALUES (21,'BEK','Bareilly Air Force Station','Bareilly');
INSERT INTO airport VALUES (22,'BPM','Begumpet Airport','Hyderabad');
INSERT INTO airport VALUES (23,'IXG','Belgaum Airport','Belgaum');
INSERT INTO airport VALUES (24,'BEP','Bellary Airport','Bellary');
INSERT INTO airport VALUES (25,'BUP','Bathinda Airport','Bathinda');
INSERT INTO airport VALUES (26,'BHU','Bhavnagar Airport','Bhavnagar');
INSERT INTO airport VALUES (27,'BHJ','Bhuj Airport','Bhuj');
INSERT INTO airport VALUES (28,'BBI','Biju Patnaik Airport','Bhubaneswar');
INSERT INTO airport VALUES (29,'PAB','Bilaspur Airport','Bilaspur');
INSERT INTO airport VALUES (30,'IXR','Birsa Munda Airport','Ranchi');
INSERT INTO airport VALUES (31,'CBD','Car Nicobar Air Force Station','Car Nicobar');
INSERT INTO airport VALUES (32,'IXC','Chandigarh Airport','Chandigarh');
INSERT INTO airport VALUES (33,'LKO','Chaudhary Charan Singh International Airport','Lucknow');
INSERT INTO airport VALUES (34,'CJB','Coimbatore International Airport','Coimbatore');
INSERT INTO airport VALUES (35,'NMB','Daman Airport','Daman and Diu');
INSERT INTO airport VALUES (36,'DED','Dehradun Airport','Dehradun');
INSERT INTO airport VALUES (37,'IDR','Devi Ahilyabai Holkar Airport','Indore');
INSERT INTO airport VALUES (38,'DBD','Dhanbad Airport','Dhanbad');
INSERT INTO airport VALUES (39,'DIB','Dibrugarh Airport','Dibrugarh');
INSERT INTO airport VALUES (40,'DMU','Dimapur Airport','Dimapur');
INSERT INTO airport VALUES (41,'NAG','Dr. Babasaheb Ambedkar International Airport','Naqpur');
INSERT INTO airport VALUES (42,'GAY','Gaya Airport','Bihar');
INSERT INTO airport VALUES (43,'GOP','Gorakhpur Airport','Gorakhpur');
INSERT INTO airport VALUES (44,'GWL','Gwalior Airport','Gwalior');
INSERT INTO airport VALUES (45,'HSS','Hisar Airport','Haryana');
INSERT INTO airport VALUES (46,'HBX','Hubli Airport','Hubli');
INSERT INTO airport VALUES (47,'IMF','Imphal Airport','Imphal');
INSERT INTO airport VALUES (48,'JLR','Jabalpur Airport','Madhya Pradesh');
INSERT INTO airport VALUES (49,'JAI','Jaipur International Airport','Jaipur');
INSERT INTO airport VALUES (50,'IXJ','Jammu Airport','Jammu');
INSERT INTO airport VALUES (51,'JGA','Jamnagar Airport','Jamnagar');
INSERT INTO airport VALUES (52,'JDH','Jodhpur Airport','Jodhpur');
INSERT INTO airport VALUES (53,'JRH','Jorhat Airport','Jorhat');
INSERT INTO airport VALUES (54,'CDP','Kadapa Airport','Kadapa');
INSERT INTO airport VALUES (55,'IXH','Kailashahar Airport','Kailashahar');
INSERT INTO airport VALUES (56,'IXY','Kandla Airport','Kandla');
INSERT INTO airport VALUES (57,'DHM','Kangra Airport','Kangra');
INSERT INTO airport VALUES (58,'CNN','Kannur International Airport','Kannur');
INSERT INTO airport VALUES (59,'KNU','Kanpur Airport','Kanpur');
INSERT INTO airport VALUES (60,'RDP','Kazi Nazrul Islam Airport','Durgapur');
INSERT INTO airport VALUES (61,'IXK','Keshod Airport','Keshod');
INSERT INTO airport VALUES (62,'HJR','Khajuraho Airport','Khajuraho');
INSERT INTO airport VALUES (63,'KQH','Kishangarh Airport','Ajmer');
INSERT INTO airport VALUES (64,'KLH','Kolhapur Airport','Maharashtra');
INSERT INTO airport VALUES (65,'KTU','Kota Airport','Kota');
INSERT INTO airport VALUES (66,'KUU','Kullu–Manali Airport','Bhuntar');
INSERT INTO airport VALUES (67,'VNS','Lal Bahadur Shastri Airport','Varanasi');
INSERT INTO airport VALUES (68,'IXL','Leh Kushok Bakula Rimpochee Airport','Leh');
INSERT INTO airport VALUES (69,'AJL','Lengpui Airport','Aizawl');
INSERT INTO airport VALUES (70,'PAT','Lok Nayak Jayaprakash Airport','Patna');
INSERT INTO airport VALUES (71,'GAU','Lokpriya Gopinath Bordoloi International Airport','Guwahati');
INSERT INTO airport VALUES (72,'LUH','Sahnewal Airport','Ludhiana');
INSERT INTO airport VALUES (73,'IXM','Madurai Airport','Madurai');
INSERT INTO airport VALUES (74,'UDR','Maharana Pratap Airport','Udaipur');
INSERT INTO airport VALUES (75,'IXE','Mangalore International Airport','Mangalore');
INSERT INTO airport VALUES (76,'LTU','Murod Kond Airport','Latur');
INSERT INTO airport VALUES (77,'MZU','Muzaffarpur Airport','Muzaffarpur');
INSERT INTO airport VALUES (78,'BKB','Nal Airport','Bikaner');
INSERT INTO airport VALUES (79,'NDC','Nanded Airport','Nanded');
INSERT INTO airport VALUES (80,'ISK','Nashik Airport','Nasik');
INSERT INTO airport VALUES (81,'IXI','North Lakhimpur Airport','Lilabari');
INSERT INTO airport VALUES (82,'PGH','Pantnagar Airport','Pantnagar');
INSERT INTO airport VALUES (83,'IXP','Pathankot Airport','Pathankot');
INSERT INTO airport VALUES (84,'PNY','Pondicherry Airport','Pondicherry');
INSERT INTO airport VALUES (85,'PBD','Porbandar Airport','Porbandar');
INSERT INTO airport VALUES (86,'PNQ','Pune Airport','Pune');
INSERT INTO airport VALUES (87,'BHO','Raja Bhoj International Airport','Bhopal');
INSERT INTO airport VALUES (88,'RJA','Rajahmundry Airport','Rajahmundry');
INSERT INTO airport VALUES (89,'RAJ','Rajkot Airport','Rajkot');
INSERT INTO airport VALUES (90,'RTC','Ratnagiri Airport','Ratnagiri');
INSERT INTO airport VALUES (91,'REW','Rewa Airport, Chorhata, REWA','Rewa');
INSERT INTO airport VALUES (92,'RRK','Rourkela Airport','Rourkela');
INSERT INTO airport VALUES (93,'SXV','Salem Airport','Salem');
INSERT INTO airport VALUES (94,'AMD','Sardar Vallabhbhai Patel International Airport','Ahmedabad');
INSERT INTO airport VALUES (95,'SXR','Sheikh ul Alam Airport','Srinagar');
INSERT INTO airport VALUES (96,'SHL','Shillong Airport','Shillong');
INSERT INTO airport VALUES (97,'SAG','Shirdi Airport','Shirdi');
INSERT INTO airport VALUES (98,'IXS','Silchar Airport','Silchar');
INSERT INTO airport VALUES (99,'SSE','Solapur Airport','Solapur');
INSERT INTO airport VALUES (100,'IXW','Sonari Airport','Jamshedpur');
INSERT INTO airport VALUES (101,'PUT','Sri Sathya Sai Airport','Puttaparthi');
INSERT INTO airport VALUES (102,'STV','Surat Airport','Surat');
INSERT INTO airport VALUES (103,'TEZ','Tezpur Airport','Tezpur');
INSERT INTO airport VALUES (104,'TRZ','Tiruchirapally Civil Airport Airport','Tiruchirappally');
INSERT INTO airport VALUES (105,'BDQ','Vadodara Airport','Vadodara');
INSERT INTO airport VALUES (106,'VGA','Vijayawada Airport','Andhra Pradesh');
INSERT INTO airport VALUES (107,'IXZ','Vir Savarkar International Airport','Port Blair');
INSERT INTO airport VALUES (108,'ZER','Ziro Airport','Ziro');
INSERT INTO airport VALUES (109,'AIP','Adampur Airport','Adampur');
INSERT INTO airport VALUES (110,'RGH','Balurghat Airport','Balurghat');
INSERT INTO airport VALUES (111,'RMD','Basanth Nagar Airport','Ramagundam');
INSERT INTO airport VALUES (112,'RMD','Basanth Nagar Airport','Ramagundam');
INSERT INTO airport VALUES (113,'DEP','Daporijo Airport','Daporijo');
INSERT INTO airport VALUES (114,'DIU','Diu Airport','Diu');
INSERT INTO airport VALUES (115,'PYB','Jeypore Airport','Jeypore');
INSERT INTO airport VALUES (116,'IXN','Khowai Airport','Khowai');
INSERT INTO airport VALUES (117,'LDA','Malda Airport','Malda');
INSERT INTO airport VALUES (118,'MYQ','Mysore Airport','Mysore');
INSERT INTO airport VALUES (119,'NVY','Neyveli Airport','Neyveli');
INSERT INTO airport VALUES (120,'IXT','Pasighat Airport','Pasighat');
INSERT INTO airport VALUES (121,'RPR','Raipur Airport','Raipur');
INSERT INTO airport VALUES (122,'TJV','Tanjore Air Force Base','Thanjavur');
INSERT INTO airport VALUES (123,'TEI','Tezu Airport','Tezu');
INSERT INTO airport VALUES (124,'TIR','Tirupati Airport','Tirupati');
INSERT INTO airport VALUES (125,'TCR','Tuticorin Airport','Thoothukudi');
INSERT INTO airport VALUES (126,'VTZ','Vishakhapatnam Airport','Visakhapatnam');
INSERT INTO airport VALUES (127,'WGC','Warangal Airport','Warangal');


create table fare (
	flight_number varchar(10) primary key,
	fare_code varchar(2) not null,
	amount int not null,
	restrictions boolean not null   
);

INSERT INTO fare VALUES ('IN560','L', 350, false);
INSERT INTO fare VALUES ('VI4529','Y', 165,false);
INSERT INTO fare VALUES ('VI4154','Y', 106, false);
INSERT INTO fare VALUES ('VI4155','Y', 142, false);
INSERT INTO fare VALUES ('AI5841','Y', 100, true);
INSERT INTO fare VALUES ('SJ1149','B', 500, true);
INSERT INTO fare VALUES ('AK48','F', 1000, true);
INSERT INTO fare VALUES ('GA1522','Y', 250, false);
INSERT INTO fare VALUES ('KF3472','Y', 150, true);
INSERT INTO fare VALUES ('GI380','Y', 256, false);
INSERT INTO fare VALUES ('AA6624','Y', 98, false);


select * from airplane_type

create table airplane_type (
	airplane_type_name varchar(10) primary key,
	max_seats int not null,
	company varchar(20)
	);

INSERT INTO airplane_type VALUES ('A320',180,'Airbus');
INSERT INTO airplane_type VALUES ('A319',156,'Airbus');
INSERT INTO airplane_type VALUES ('A321',236,'Airbus');
INSERT INTO airplane_type VALUES ('A332',200,'Airbus');
INSERT INTO airplane_type VALUES ('707',189,'Boeing');
INSERT INTO airplane_type VALUES ('737',124,'Boeing');
INSERT INTO airplane_type VALUES ('747',550,'Boeing');
INSERT INTO airplane_type VALUES ('757',228,'Boeing');
INSERT INTO airplane_type VALUES ('727',189,'Boeing');
INSERT INTO airplane_type VALUES ('767',290,'Boeing');
INSERT INTO airplane_type VALUES ('777',440,'Boeing');
INSERT INTO airplane_type VALUES ('787',323,'Boeing');
INSERT INTO airplane_type VALUES ('ERJ145',50,'Embraer');
INSERT INTO airplane_type VALUES ('190',114,'Embraer');
INSERT INTO airplane_type VALUES ('170',80,'Embraer');
INSERT INTO airplane_type VALUES ('CRJ440',44,'Bombardier');
INSERT INTO airplane_type VALUES ('CRJ100',50,'Bombardier');
INSERT INTO airplane_type VALUES ('CRJ700',78,'Bombardier');
INSERT INTO airplane_type VALUES ('MD80',166,'McDonnell-Douglas');


select * from airplane

create table airplane (
	airplane_id int primary key,
	total_number_of_seats int not null,
	airplane_type varchar(10) not null
);

INSERT INTO airplane VALUES (1,180,'A320');
INSERT INTO airplane VALUES (2,175,'A320');
INSERT INTO airplane VALUES (3,156,'A319');
INSERT INTO airplane VALUES (4,150,'A319');
INSERT INTO airplane VALUES (5,145,'A319');
INSERT INTO airplane VALUES (6,188,'707');
INSERT INTO airplane VALUES (7,187,'707');
INSERT INTO airplane VALUES (8,124,'727');
INSERT INTO airplane VALUES (9,123,'737');
INSERT INTO airplane VALUES (10,120,'737');
INSERT INTO airplane VALUES (11,550,'747');
INSERT INTO airplane VALUES (12,500,'747');
INSERT INTO airplane VALUES (13,225,'757');
INSERT INTO airplane VALUES (14,290,'767');
INSERT INTO airplane VALUES (15,285,'767');
INSERT INTO airplane VALUES (16,440,'777');
INSERT INTO airplane VALUES (17,323,'787');
INSERT INTO airplane VALUES (18,50,'ERJ145');
INSERT INTO airplane VALUES (19,50,'ERJ145');
INSERT INTO airplane VALUES (20,110,'190');
INSERT INTO airplane VALUES (21,80,'170');
INSERT INTO airplane VALUES (22,44,'CRJ440');
INSERT INTO airplane VALUES (23,40,'CRJ440');
INSERT INTO airplane VALUES (24,50,'CRJ100');
INSERT INTO airplane VALUES (25,70,'CRJ700');
INSERT INTO airplane VALUES (26,75,'CRJ700');
INSERT INTO airplane VALUES (27,77,'CRJ700');
INSERT INTO airplane VALUES (28,166,'MD80');
INSERT INTO airplane VALUES (29,200,'A321');
INSERT INTO airplane VALUES (30,180,'A332');


commit;
