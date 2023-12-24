use carfour
go

SET IDENTITY_INSERT production.branches ON;  
insert into production.branches ( branch_id,phone ,email , address)
values (3,'01156372891' , 'Beni_Suef_branch@gmail.com' , '789 Nile View Street, Downtown, Beni Suef, Egypt'),
(1,'01254633821' , 'cairo_branch@gmail.com' , '456 Sphinx Avenue, Maadi, Cairo, Egypt'),
(2,'01085748294' , 'Alexandria_branch@gmail.com' , '333 Coastal Boulevard, North Alexandria, Egypt');
SET IDENTITY_INSERT production.branches OFF;

update production.branches
set phone = '01085748294'
where branch_id = 1;


SET IDENTITY_INSERT production.department ON
insert into production.department (department_id, department_name, branch_id)
values (5,'Electronics',1),
(1,'Foods',1),
(4,'Detergents',1),
(3,'Freezers',1),
(2,'Snacks & Drinks',1),
(10,'Electronics',2),
(6,'Foods',2),
(8,'Detergents',2),
(7,'Freezers',2),
(9,'Snacks & Drinks',2),
(15,'Electronics',3),
(11,'Foods',3),
(14,'Detergents',3),
(13,'Freezers',3),
(12,'Snacks & Drinks',3)
UPDATE production.department
SET department_name = 'Grocery'
WHERE department_id = 1  or department_id = 11 or department_id = 6
SET IDENTITY_INSERT production.department OFF


SET IDENTITY_INSERT production.supplier ON
insert into production.supplier (supplier_id, supplier_name, phone, email, address)
values (5,'Egy_Foods','0150568952','egyfoods938@gmail.com','123 Nile Street, Giza, Cairo, Egypt'),
(1,'Delta_Vegtables','0112561978','deltavegs558@gmail.com','456 Sphinx Avenue, Maadi, Alexandria, Egypt'),
(6,'Uni_Fruits','0155494594','unifruits813@gmail.com','183 Nile View Street, Minya, Egypt'),
(4,'Cai_Electronics','0101664859','caielectro565@gmail.com','101 Pyramid Avenue, Zamalek, Cairo, Egypt'),
(2,'Egy_Farms','0101949445','egyfarms99@gmail.com','456 Oasis Lane, Minya City, Minya, Egypt'),
(3,'Dete_Comp','0122499490','compdete656@gmail.com','333 Nile View, Dokki, Cairo, Egypt') ;
SET IDENTITY_INSERT production.supplier OFF


update production.supplier
set phone = '0108548294'
where supplier_id = 1;



SET IDENTITY_INSERT production.products ON;  
INSERT INTO production.products(product_id,product_name,price,brand,supplier_id,department_id) 
VALUES (1,'Shampoo',20.75,'Sunslik',3,4),
(2,'Hand Soap',6.5,'SOOP',3,4),
(3,'Big',6,'Big',5,2),
(4,'Fabric Softener',5054,'Fresh',4,5),
(5,'Deodorant',25.5,'Deo',3,4),
(6,'Chpis',10,'Chipsi',5,2),
(7,'Body Wash',20,'Sunslik',3,4),
(8,'Orange Juice',10,'Juhayna',5,2),
(9,'Tv Screen',6500,'Samsung',4,5),
(10,'Rice',20,'Elfath',5,1),
(11,'Remote Control',12.5,'Samsung',4,5), 
(12,'Mango Juice',10,'Juhayna',5,2),
(13,'Paper Towels',12.5,'Fine',3,4),
(14,'Battries',12.5,'Everready',4,5), 
(15,'Macronai',20,'El-Malka',5,1),
(16,'Pepsi Diet',12,'Pepsi',5,2),
(17,'Dortios',6,'Doritos',5,2),
(18,'Toilet Paper',11,'Fine',3,4),
(19,'Sprite Zero',12,'Sprite',5,2),
(20,'Spagettei',20,'El-Malka',5,1),
(21,'Firdge',12500,'Fresh',4,5),
(22,'Lion',7,'Lion',5,2),
(23,'Ice Cream',12.5,'Cono',5,2),
(24,'Shampoo',20.75,'Sunslik',3,8),
(25,'Hand Soap',6.5,'SOOP',3,8),
(26,'Big',6,'Big',5,9),
(27,'Fabric Softener',5054,'Fresh',4,10),
(28,'Deodorant',25.5,'Deo',3,8),
(29,'Chpis',10,'Chipsi',5,9),
(30,'Body Wash',20,'Sunslik',3,8),
(31,'Orange Juice',10,'Juhayna',5,9),
(32,'Tv Screen',6500,'Samsung',4,10),
(33,'Rice',20,'Elfath',5,6),
(34,'Remote Control',12.5,'Samsung',4,10), 
(35,'Mango Juice',10,'Juhayna',5,9),
(36,'Paper Towels',12.5,'Fine',3,8),
(37,'Battries',12.5,'Everready',4,10), 
(38,'Macronai',20,'El-Malka',5,6),
(39,'Pepsi Diet',12,'Pepsi',5,9),
(40,'Dortios',6,'Doritos',5,9),
(41,'Toilet Paper',11,'Fine',3,8),
(42,'Sprite Zero',12,'Sprite',5,9),
(43,'Spagettei',20,'El-Malka',5,6),
(44,'Firdge',12500,'Fresh',4,10),
(45,'Lion',7,'Lion',5,9),
(46,'Ice Cream',12.5,'Cono',5,9),
(47,'Shampoo',20.75,'Sunslik',3,14),
(48,'Hand Soap',6.5,'SOOP',3,14),
(49,'Big',6,'Big',5,12),
(50,'Fabric Softener',5054,'Fresh',4,15),
(51,'Deodorant',25.5,'Deo',3,14),
(52,'Chpis',10,'Chipsi',5,12),
(53,'Body Wash',20,'Sunslik',3,14),
(54,'Orange Juice',10,'Juhayna',5,12),
(55,'Tv Screen',6500,'Samsung',4,15),
(56,'Rice',20,'Elfath',5,11),
(57,'Remote Control',12.5,'Samsung',4,15), 
(58,'Mango Juice',10,'Juhayna',5,12),
(59,'Paper Towels',12.5,'Fine',3,14),
(60,'Battries',12.5,'Everready',4,15), 
(61,'Macronai',20,'El-Malka',5,11),
(62,'Pepsi Diet',12,'Pepsi',5,12),
(63,'Dortios',6,'Doritos',5,12),
(64,'Toilet Paper',11,'Fine',3,14),
(65,'Sprite Zero',12,'Sprite',5,12),
(66,'Spagettei',20,'El-Malka',5,11),
(67,'Firdge',12500,'Fresh',4,15),
(68,'Lion',7,'Lion',5,12),
(69,'Ice Cream',12.5,'Cono',5,12) ;
INSERT INTO production.products(product_id,product_name,price,supplier_id,department_id) 
VALUES (70,'Lettuce',13.5,1,1),
(71,'Apple',16.5,6,1),
(72,'Cucumbers',10.5,1,1),
(73,'Meat',125,2,3),
(74,'Bananas',20,6,1),
(75,'Chicken',100,2,3),
(76,'Gappage',15.5,1,1),
(77,'Orange',20.75,6,1),
(78,'Fish',89,2,3),
(79,'Carrots',24.5,1,1),
(80,'Starwerry',25.5,6,1),
(81,'Tomatoes',30.5,1,1),
(82,'Lettuce',13.5,1,6),
(83,'Apple',16.5,6,6),
(84,'Cucumbers',10.5,1,6),
(85,'Meat',125,2,7),
(86,'Bananas',20,6,6),
(87,'Chicken',100,2,7),
(88,'Gappage',15.5,1,6),
(89,'Orange',20.75,6,6),
(90,'Fish',89,2,7),
(91,'Carrots',24.5,1,6),
(92,'Starwerry',25.5,6,6),
(93,'Tomatoes',30.5,1,6),
(94,'Lettuce',13.5,1,11),
(95,'Apple',16.5,6,11),
(96,'Cucumbers',10.5,1,11),
(97,'Meat',125,2,13),
(98,'Bananas',20,6,11),
(99,'Chicken',100,2,13),
(100,'Gappage',15.5,1,11),
(101,'Orange',20.75,6,11),
(102,'Fish',89,2,13),
(103,'Carrots',24.5,1,11),
(104,'Starwerry',25.5,6,11),
(105,'Tomatoes',30.5,1,11);
SET IDENTITY_INSERT production.products OFF;

SET IDENTITY_INSERT sales.employees ON; 
insert into sales.employees (employee_id, first_name , last_name , address , email , phone , gender , branch_id)
values (1,'Ahmed' , 'Mostafa' , 'Cairo' , 'ahmed22@gmail.com' , '01256437829' , 'Male' , 2),
(2,'Heba' , 'Mahmoud' , 'Fayoum' , 'heba@gmail.com' , '01038765432' , 'Female' , 3),
(3,'Marwan' , 'Mohamed' , 'Alexandria' , 'marwan_m@gmail.com' , '01276421692' , 'Male' , 2),
(4,'Malak' , 'Ahmed' , 'Beni Suef' , 'malak@gmail.com' , '015586916058' , 'Female' , 1),
(5,'Rehame' , 'Ali' , 'Giza' , 'Rehame@gmail.com' , '01554985633' , 'Female' , 3),
(7,'Abanoub' , 'reda' , 'aswan' , 'Abanoub@gmail.com' , '01129448401' , 'Male' , 2),
(9,'rahma' , 'magdy' , 'beheira' , 'rahma@gmail.com' , '01593750833' , 'Female' , 1),
(10,'hessuin' , 'Mohamed' , 'tanta' , 'hessuin@gmail.com' , '01028493703' , 'Male' , 3),
(6,'mariam' , 'zaky' , 'Beni Suef' , 'mariam@gmail.com' , '01128494764' , 'Female' , 1),
(8,'salma' , 'Ali' , 'minya' , 'salma@gmail.com' , '01237493783' , 'Female' , 1),
(11,'ayad' , 'adel' , 'kafr elsheik' , 'ayad@gmail.com' , '01096483501' , 'Male' , 2),
(13,'alaa' , 'ali' , 'beheira' , 'alaa@gmail.com' , '01092750833' , 'Female' , 3),
(15,'ahmed' , 'hassan' , 'tanta' , 'ahmed@gmail.com' , '01118493703' , 'Male' , 2),
(12,'manar' , 'nabil' , 'Beni Suef' , 'manar@gmail.com' , '01012494764' , 'Female' , 1),
(14,'hend' , 'mohsen' , 'minya' , 'hend@gmail.com' , '01237493783' , 'Female' , 3);
SET IDENTITY_INSERT sales.employees OFF; 

SET IDENTITY_INSERT sales.customers ON; 
INSERT into sales.customers(customer_id,first_name,last_name,address,email,phone)
VALUES (1,'Ahmed','Mohamed','789 Nile View Street, Downtown, Beni Suef, Egypt','ahmed@gmail.com','01284739200'),
(2,'Mohamed','Ahmed','25 Al Haram Street,Giza,Egypt','mohamed@gmail.com','01557684321'),
(3,'Heba','Ali','Amin Sami Pasha Street,Cairo,Egypt','heba@gmail.com','01284623145'),
(4,'Maha','Mahmoud','Al-Azhar Street,Cairo,Egypt','maha@gmail.com','01198364312'),
(5,'Mostafa','EL_Sayed','Al-Ashraf Street ,Cairo,Egypt','mostafa.s@gmail.com','01028463889'),
(6,'Mahmoud','Ahmed','Faisal Street ,Giza,Egypt','mahmoud@gmail.com','01293745456'),
(7,'Malak','Mohamed','Mohieddin Abu Al-Ezz Street,Dokki,Egypt','malak@gmail.com','01028735549'),
(8,'Reham','Hashem','Makram Ebeid Street, Nasr City, Cairo, Egypt','reham@gmail.com','01123087532'),
(9,'Amir','Mohamed','Mostafa El Nahhas Street, Nasr City, Cairo, Egypt','amir@gmail.com','01283645666'),
(10,'Amal','Magdy','Al-Ghouria Street, Al-Gamaleya District, Cairo, Egypt','amal@gmail.com','01109376453'),
(11,'Ahmed','Mohamed','789 Nile View Street, Downtown, Beni Suef, Egypt','ahmed.m@gmail.com','01284739200'),
(12,'Heba','Ali','Amin Sami Pasha Street,Cairo,Egypt','heba.a@gmail.com','01284623145'),
(13,'Mahmoud','Ahmed','Faisal Street ,Giza,Egypt','mahmoud.a@gmail.com','01293745456'),
(14,'Mostafa','EL_Sayed','Al-Ashraf Street ,Cairo,Egypt','mostafa@gmail.com','01028463889'),
(15,'Malak','Mohamed','Mohieddin Abu Al-Ezz Street,Dokki,Egypt','malak.m@gmail.com','01028735549'),
(16,'Mohamed','Ahmed','25 Al Haram Street,Giza,Egypt','mohamed.a@gmail.com','01557684321'),
(17,'Amir','Mohamed','Mostafa El Nahhas Street, Nasr City, Cairo, Egypt','amir.m@gmail.com','01283645666'),
(18,'Maha','Mahmoud','Al-Azhar Street,Cairo,Egypt','maha.m@gmail.com','01198364312'),
(19,'Amal','Magdy','Al-Ghouria Street, Al-Gamaleya District, Cairo, Egypt','amal.m@gmail.com','01109376453'),
(20,'Mahmoud','Ahmed','Faisal Street ,Giza,Egypt','mahmoud.ah@gmail.com','01293745456'),
(21,'Reham','Hashem','Makram Ebeid Street, Nasr City, Cairo, Egypt','reham.h@gmail.com','01123087532'),
(22,'Ahmed','Mohamed','789 Nile View Street, Downtown, Beni Suef, Egypt','ahmed.mo@gmail.com','01284739200'),
(23,'Heba','Ali','Amin Sami Pasha Street,Cairo,Egypt','heba.ali@gmail.com','01284623145'),
(24,'Menna','Salama','Nabi Daniel Street, Alexandria, Egypt','menna@gmail.com','01027645468'),
(25,'Mark','Gergis','Suez Canal Street, Alexandria, Egypt','marg@gmail.com','01097344321'),
(26,'Nour','Ahmed','Fouad Street, Alexandria, Egypt','nour@gmail.com','01298475654'),
(27,'Malek','Eid','Talaat Harb Street, downtown Cairo, Cairo, Egypt','malek@gmail.com','01192763467'),
(28,'Seleem','Ahmed','Qawla Street, Abdeen District, Cairo, Egypt','seleem@gmail.com','01556323467'),
(29,'Abdulrahman','Mamdouh','Al-Muizz Lidin Allah Al-Fatimi Street, Old Cairo, Cairo, Egypt','abdulrahman@gmail.com','01102836456'),
(30,'Yousef','Ahmed','Misr and Sudan Street, Hadayek Al-Qubba neighborhood, Cairo, Egypt','yousef@gmail.com','01274536289');
SET IDENTITY_INSERT sales.customers OFF;

SET IDENTITY_INSERT sales.orders ON; 
insert into sales.orders(order_id,order_date,customer_id,employee_id,branch_id)
values (1,'2023-11-10',2,3,1),
(2,'2023-1-1',3,4,2),
(3,'2023-12-13',28,7,3),
(4,'2023-2-16',24,10,2),
(5,'2023-4-10',21,13,3),
(6,'2023-6-7',12,12,1),
(7,'2023-7-29',14,11,3),
(8,'2023-10-10',17,14,1),
(9,'2023-9-18',7,15,2),
(10,'2023-6-10',5,5,1),
(11,'2023-7-3',21,8,3),
(12,'2023-3-8',1,6,2),
(13,'2023-1-5',29,9,3),
(14,'2023-8-4',19,1,2),
(15,'2023-6-26',9,2,1);
SET IDENTITY_INSERT sales.orders OFF;


insert into production.storage(storage_id ,quantity ,product_id ,branch_id)
values(1,123,9,1),
(1,166,6,2),
(1,189,2,3),
(1,141,7,3),
(1,169,4,2),
(1,100,11,1),
(2,122,12,2),
(2,132,15,3),
(2,155,14,2),
(2,144,16,3),
(2,177,17,1),
(3,169,19,3),
(3,185,13,2),
(3,147,22,3),
(3,163,23,1),
(3,174,21,3),
(3,188,25,2),
(1,143,27,2),
(3,142,29,3),
(1,145,26,1),
(2,186,37,2),
(2,184,38,3),
(2,178,34,2),
(1,99,39,3),
(1,88,42,1),
(1,127,43,2),
(1,128,41,1),
(3,129,47,3),
(3,137,46,3),
(1,138,48,2),
(1,135,49,1);



insert into sales.promotion(promo_code,discount_value,start_date ,end_date ,product_id)
values ('hedqw-5da5-adma4',50,'20230101','20230120',2),
       ('aurh_2gt4_atgb',20,'20230216','20230416',3),
	   ('aersd_6hv8_khgv9',40,'20230320','20230512',5),
	   ('aefru_4ec7_ojgr4',40,'20230105','20230109',9),
	   ('diwuwh_7ij7_lijj7',90,'20230901','20230915',7),
	   ('sodi_2ij3_iudu',70,'20230715','20230801',8),
	   ('sgfte_5gf7_kjci',10,'20230201','20230412',45),
       ('sjhd_3un4_jkhd',30,'20230112','20230315',67),
	   ('dkjdi_8dh9_paoad',60,'20220612','20220715',35),
	   ('wjdhu_9ei9_kamda',40,'20220501','20220523',11),
	   ('sksjio_2ki3_smcksj',45,'20230705','20230805',1),
	   ('sdioj_3ij8_kdjfsi',35,'20230608','20230709',24),
	   ('gdsyud_5h6_kjcjci',10,'20230415','20230601',76),
	   ('jcusd_8f8_kdjsii',15,'20231101','20231203',99),
	   ('owudh_9mh3_kdldmn',25,'20230901','20231012',90);

Insert into sales.cart(order_id,product_id,Quantity,total_price,promo_code)
values('1','1','10',300.00,'hedqw-5da5-adma4'),
('2','2','10',120.00,'aurh_2gt4_atgb'),
('3','4','3',30.00,'aersd_6hv8_khgv9'),
('4','55','13',227.50,'aefru_4ec7_ojgr4'),
('5','19','7',118.00,'diwuwh_7ij7_lijj7'),
('6','50','20',552.25,'sodi_2ij3_iudu'),
('7','70','5',105.75,'sgfte_5gf7_kjci'),
('8','13','8',149.75,'sjhd_3un4_jkhd'),
('9','28','17',419.25,'dkjdi_8dh9_paoad'),
('10','99','6',49.30,'wjdhu_9ei9_kamda'),
('11','33','10',160.00,'sksjio_2ki3_smcksj'),
('12','54','18',483.75,'sdioj_3ij8_kdjfsi'),
('13','67','5',27.50,'gdsyud_5h6_kjcjci'),
('14','86','12',120.25,'jcusd_8f8_kdjsii'),
('15','30','15',123.50,'owudh_9mh3_kdldmn');


/*alter , update , drop*/

create table work_time(
	start_time  time,
	end_time  time,
	branch_id int,
);
insert into work_time(start_time,end_time ,branch_id)
values('6:00:00','12:00:00',1),
      ('1:00:00','6:00:00',2),
	  ('12:00:00','1:00:00',3),
	  ('9:00:00','2:00:00',4)

update work_time
set start_time='1:00:00'
where branch_id=1;

delete from work_time
where branch_id=4;

alter table work_time
drop column end_time;

Alter table employees
add Age varchar(5);


Alter table employees
drop column Age;

Alter table employees
drop column address;

Alter table employees
add address varchar(255);

Alter table products
add Validity varchar(5);

Alter table products
drop column Validity;

Alter table products
add Expiry_date date;

Alter table products
drop column Expiry_date;