use Library
go

insert into sections (section_id ,section_name, books_amount )
values (1,'Fiction',30),
(2,'Mystery' , 20),
(3,'Romance',50),
(4,'Literature',29),
(5,'History',45),
(6 ,'Fantasy',23),
(7,'Biography',47);


INSERT INTO books(book_id, title, author,category,purchase_price,date_purchased,section_id)
VALUES (1, 'To Kill a Mockingbird' ,' Harper Lee' ,'Fiction',12.30 , '2019-10-22',1), 
 (3,'The Great Gatsby ' ,' F. Scott Fitzgerald' ,' Fiction',10.50 , '2020-3-20',1),
 (9, 'The Lord of the Rings' ,' J.R.R. Tolkien' ,'Fantasy',16.55 , '2018-10-22',6), 
 (2,'Harry Potter ' ,' J.K. Rowling' ,'Fantasy',13.75 , '2018-10-23',6),
 (37,'Alice’s Adventures in Wonderland' ,'Lewis Carroll' ,'Fantasy',12.75 , '2020-10-21',6),
 (38,'The Sword in the Stone' ,'T.H. White' ,'Fantasy',12.50 , '2018-9-21',6),
 (40,'The Lion, the Witch, and the Wardrobe' ,' C.S. Lewis' ,'Fantasy',17.50 , '2021-1-21',6),
 (39,'Pride and Prejudice', ' Jane Austen', 'Romance', 20.50, '2021-1-15', 3),
 (6,'Jane Eyre', 'Charlotte Brontë', 'Romance',15.75 , '2019-11-07', 3),
 (5, 'Morning Glory' ,'Lavyrle Spencer' ,'Romance',14.30 , '2017-09-22',3), 
 (7,'Lord of Scoundrels' ,' Loretta Chase' ,'Romance',17.25 , '2020-6-30',3),
 (8,'Indigo' ,'Beverly Jenkins' ,'Romance',11.75, '2022-2-25',3),
 (10,'Lord of the Flies' ,'William Golding' ,'Fiction',11.50 , '2022-2-10',1),
 (11,'Anne of Green Gables' ,'Lucy Maud Montgomery' ,'Fiction',13.50 , '2022-1-08',1),
 (12,'Adventures of Sherlock Holmes' ,'Arthur Conan Doyle' ,'Fiction',16.50 , '2022-1-08',1),
 (13,'Frankenstein' ,'Mary Shelley' ,'Fiction',19.50 , '2022-1-10',1),
 (14,'And Then There Were None' ,'Agatha Christie' ,'Mystery',15.80 , '2018-9-21',2),
 (15,'The Big Sleep' ,'Raymond Chandler' ,'Mystery',20.75 , '2018-7-17',2),
 (16,'Gone Girl ' ,'Gillian Flynn' ,'Mystery',21.80 , '2018-9-16',2),
 (17,'In Cold Blood' ,'Truman Capote' ,'Mystery',15.50 , '2021-8-21',2),
 (18,'Woman in White' ,'Wilkie Collins' ,'Mystery',13.60 , '2020-10-5',2),
 (19,'Anatomy of a Murder' ,'Robert Traver' ,'Mystery',20.60 , '2018-4-1',2),
 (20,'Of Mice and Men' ,'John Steinbeck' ,'Literature',15.70 , '2021-5-6',4),
 (21,'Brave New World' ,'Aldous Huxley' ,'Literature',11.50 , '2019-3-21',4),
 (22,'The Picture of Dorian Gray' ,'Oscar Wilde' ,'Literature',13.30 , '2018-10-11',4),
 (23,'Wuthering Heights' ,'Emily Brontë' ,'Literature',16.75 , '2021-8-10',4),
 (24,'The Stranger' ,' Albert Camus' ,'Literature',17.30 , '2020-10-21',4),
 (25,'The Old Man and the Sea' ,'Ernest Hemingway ' ,'Literature',11.20 , '2019-9-11',4),
 (26,'Grant' ,'Ron Chernow' ,'History',13.20 , '2019-9-11',5),
 (27,'Guns, Germs, and Steel: The Fate of Human Societies' ,'Jared Diamond' ,'History',15.75 , '2019-9-11',5),
 (28,'Leningrad: The Epic Siege of World War II, 1941-1944' ,'Anna Reid' ,'History',14.20 , '2019-9-11',5),
 (29,'Rites of Spring: the Great War and the Birth of the Modern Age' ,'Modris Eksteins' ,'History',19.20 , '2019-9-11',5),
 (30,'The History of the Ancient World' ,'Susan Wise Bauer' ,'History',18.70 , '2019-9-11',5),
 (31,'Democracy: A Life' ,'Paul Cartledge' ,'History',20.50 , '2020-10-11',5),
 (32,'Henry James' ,'Leon Edel' ,'Biography',15.50 , '2023-5-15',7),
 (33,'James Joyce' ,'Richard Ellmann' ,'Biography',19.50 , '2022-6-16',7),
 (34,'Edith Wharton ' ,'RWB Lewis' ,'Biography',17.75, '2019-7-10',7),
 (35,'Shelley: The Pursuit' ,' Richard Holmes' ,'Biography',22.55 , '2020-2-3',7),
 (36,'Dickens' ,'Peter Ackroyd' ,'Biography',23.30 , '2021-9-4',7)

INSERT INTO users(user_Id, user_fname, user_lname,address , phone_number , email )
VALUES ( 1 , 'Ali' ,'Mahmoud', 'Beni Suef' , 01112394488 , 'ededhjg@gmail.com'),
( 2 , 'Hassan' ,'Mohamed', 'Cairo' , 01014574488 , 'fwfwfwefdfg@gmail.com'),
( 3 , 'Ahmed' ,'Alaa', 'Mina' , 01235694488 , 'fsdfsdfhjg@gmail.com'),
( 4 , 'Mohamed' ,'Shrief', 'Cairo' , 01056394488 , 'fghfgejg@gmail.com'),
( 5 , 'Samir' ,'Sayed', 'Fayiom' , 01023458655 , 'EAWAEhjg@gmail.com'),
( 6 , 'Omar' ,'Fathy', 'Beni Suef' , 01248504849 , 'adfaetwjg@gmail.com'),
( 7 , 'Taha' ,'Ahmed', 'Alexandria' , 01133840384 , 'vsfvfhjg@gmail.com'),
( 8 , 'Osama' ,'Abdlerahman', 'Mina ' , 01002894459 , '56uhdfe5jg@gmail.com'),
( 9 , 'Mohamed' ,'Eyad', 'Fayiom ' , 01002894459 , 'vedfejg@gmail.com'),
( 10 , 'Ali' ,'Ahmed', 'Alexandria' ,01144953930 , 'asdawejg@gmail.com'),
(11 , 'Abanoup' , 'Farouk', 'Beni Suef' , 01239845679 ,'wdwdwdj@gmail.com'),
(12 , 'Ahmed' , 'Ali', 'Suez' , 01193785093 ,'erfwefdf@gmail.com'),
(13 , 'Hessein' , 'Hassan', 'Giza' , 01123984459 ,'bdfwffj@gmail.com'),
(14, 'Ali' , 'kamel', 'Aswan' , 01124953930 ,'wdsfdvdj@gmail.com');	


INSERT INTO staff(staff_id,first_name , last_name ,staff_address , phone_number,email,position )
VALUES (1 , 'Ahmed' , 'Mohamed', 'Beni Suef' , 01123984459 ,'cscckjdj@gmail.com', 'Manager') ,
(2 , 'Hassan' , 'Alaa', 'Aswan' , 01024944559 ,'ewfwefwd@gmail.com', 'Cataloger') ,
(3 , 'Khaled' , 'Mohsen', 'Cairo' , 01002894459 ,'bwdecec@gmail.com', 'Archivist'),
(4 , 'Ahmed' , 'Khaled', 'Beni Suef' , 01043984459 ,'bhxjkjdj@gmail.com', 'Libarian'),
(5 , 'Omar' , 'Mohamed', 'Beni Suef' , 01243984459 ,'fbdfgdfgdj@gmail.com', 'Clerk'),
(6 , 'Islam' , 'Omar', 'Cairo' , 01246984459 ,'fewggdj@gmail.com', 'Libarian')

INSERT INTO transactions(transaction_id,book_id, user_id ,staff_id ,borrow_date , return_date, status)
VALUES (1,7,6,4,'2023-2-13','2024-1-13', 'borrowed'),
(2,11,10,6,'2023-2-13','2024-1-13', 'borrowed'),
(3,21,7,6,'2023-1-1','2023-1-3', 'returned'),
(4,5,8,4,'2023-8-4','2023-5-6', 'returned'),
(5,31,9,4,'2021-1-5','2021-5-13', 'borrowed'),
(6,33,5,4,'2020-2-15','2020-12-3', 'returned'),
(7,20,6,6,'2019-5-4','2019-2-3', 'borrowed'),
(8,18,3,6,'2018-7-6','2018-1-7', 'returned'),
(9,16,4,6,'2017-2-23','2017-5-9', 'borrowed'),
(10,1,1,4,'2016-1-8','2016-4-7', 'returned');

insert into reviews (review_id,rating,book_id,user_id)
values (1,6.5,5,5),
(2,9.3,10,1),
(3,6.7,18,3),
(4,7.5,20,4),
(5,8.4,11,2),
(6,8.9,3,14),
(7,8.5,20,6),
(8,3.9,19,7),
(9,2.2,21,8),
(10,7.8,22,9),
(11,7.4,24,10),
(12,9.9,15,11),
(13,10,6,12),
(14,8.6,14,13);
