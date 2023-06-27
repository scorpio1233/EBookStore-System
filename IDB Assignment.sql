create table Customers
customer_ID nvarchar(50) NOT NULL,
customer_FirstName nvarchar(50) NOT NULL,
customer_LastName nvarchar(50) NOT NULL,
customer_Email nvarchar(100) NOT NULL,
customer_Phone nvarchar(20) NOT NULL,
customer_Phone nvarchar(100) NOT NULL);

insert into Customers Values
('QD0001','Bassam','Naaji','mddallara@comcast.net','+60 088 936 4803','A 4380, Jalan Teluk Sisek,Kuantan,Pahang,25000,Malaysia')
('QD0002','Husniya','Saab','klaudon@outlook.com','+60 069 298 0979','Point 8 Hala Pegoh 15 Rapat Pinij Seberang 31500,Ipoh,Perak,11647,Malaysia')
('QD0003','Jaffer','Alfarsi','wmszeliga@msn.com','+60 042 580 4166','No. 105, Jalan SS2/24,Petaling Jaya,Selangor,47300,Malaysia')
('QD0004','Tahira','Ahmed','aglassis@outlook.com','+60 054 885 5413','Pantai Cenang,Langkawi,Kedah,07000,Malaysia')
('QD0005','Abdessalam','Tawfeek','tamas@live.com','+60 041 799 6548','No. 8,Jalan Sesama,ri Gombak,68100,Malaysia')
('QD0006','Abdul Hamid','Alfarsi','hoyer@mac.com','+60 081 521 1430','38 JLN SIOW LOONG HIN,Seremban,Negeri Sembilan,70000,Malaysia')
('QD0007','Adil','Al-Mufti','rhavyn@gmail.com','+60 064 693 0611','angunan Mutiara Motors No. 111 Batu 4 1/2 Jalan Tebrau,Johor Bahru,80250,Malaysia')
('QD0008','Riaz','Abdulrashid','jfriedl@verizon.net','+60 055 858 7490','2 11 2 12 Jln 3/109F Danau Desa,Kuala Lumpur,Wilayah Persekutuan,58100,Malaysia')

create table Publishers
Publisher_ID nvarchar(50) primary key,
Publisher_Name nvarchar(50) NOT NULL,
Contact_Number nvarchar(20) NOT NULL,
Email_Address nvarchar(100) NOT NULL);

insert into Publishers Values

('OC0001','Younes Amjad','+60 033 234 1968','22 Jalan AU 5C/12 Lembah Keramat,Wilayah Persekutuan,54200,Malaysia')
('OC0002','Samar Ahmed','+60 078 751 2158','42 Lrg Raja Bot,Kuala Lumpur,Wilayah Persekutuan,50300,Malaysia')
('OC0003','Abdur Rashid Karimi','+60 036 338 5376','G 64 Jln Yam Tuan,Seremban,Negeri Sembilan,70000,Malaysia')
('OC0004','Faisal Muhammad','+60 402 907 1946','588 78F Kampung Padang Balang,Kuala Lumpur,Wilayah Persekutuan,51100,Malaysia')
('OC0005','Sabri Ali','+60 899 466 4629','Km 13, Jalan Puchong,Puchong,Selangor,47100,Malaysia')
('OC0006','Abdul Hamid','+60 577 863 1161','No. 6, Jln Brp 9/1C, Sungai Buloh,Sungai Buloh,Selangor,Malaysia')
('OC0007','Ziauddin El-Amin','+60 383 116 2294','1039 Taman City,Wilayah Persekutuan,51200,Malaysia')
('OC0008','Ghada Nejem','+60 999 331 0865','Jalan Aminuddin Baki, Taman Tun Dr Ismail,Kuala Lumpur,Wilayah Persekutuan,60000,Malaysia')


create table Students 
Student_ID nvarchar(50) primary key,
Student_name nvarchar(50) NOT NULL,
Email_Address nvarchar(50) NOT NULL,
Phone_Number nvarchar(50) NOT NULL,
Account_Password nvarchar(50) NOT NULL);

insert into Students Values

('TP000001','Mandy J. Snoddy','Bahadur@gmail.com','+60 094 230 1771','35247915')
('TP000002','William B. Robertson','lorna@gmail.com','+60 543 495 8736','3D87DAF8')
('TP000003','Janet P. Hileman','Timur@gmail.com','+60 661 724 4901','CBF6D343')
('TP000004','Lauren R. Combs','Sani@gmail.com','+60 437 764 3386','626C2B86')
('TP000005','Mark Y. Price','Alain@gmail.com','+60 231 682 0394','451F2811')
('SF000001','Joseph S. Adams','Hilarius@gmail.com','+60 299 652 8145','04DD8048')
('SF000002','Bryan D. Rodriguez','Cher@gmail.com','+60 276 934 0981','2DAE8A25')
('SF000003','Deborah L. Barnett','Kantuta@gmail.com','+60 182 782 2478','CA3107C5')



create table Books 
Book_ID nvarchar(50) primary key,
Book_Name nvarchar(100) NOT NULL,
Auther nvarchar(50) NOT NULL,
Price decimal(6,2) NOT NULL,
Stock int NOT NULL);

insert into Books Values

('IS0002','Practical Cryptography for Developers','Svetlin Nakov',29,183)
('IS0003','ntroduction to Modern Algebra','David Joyce',30,98)
('IS0004','Natural Language Processing with TensorFlow','Thushan Ganegedara',31,60)
('IS0005','Basic Analysis: Introduction to Real Analysis','Jiří Lebl',32,105)
('IS0006','Nginx HTTP Server – Third Edition','Clement Nedelcu',33,106)
('IS0007','Demystifying Internet of Things Security','Sunil Cheruvu',34,81)
('IS0008','Python Programming for Arduino','Pratik Desai',35,133)
('IS0009','Isomorphism -- Mathematics of Programming','Liu Xinyu',36,122)

create table Students_Orders
Student_Order_Number nvarchar(50) primary key,
Student_ID nvarchar(50) foreign key references Students(Student_ID),
Order_Date date NOT NULL);

insert into Students_Orders Values

('521541374','TP000006','27/08/2022')
('902299292','TP000007','16/10/2022')
('639358521','TP000008','20/11/2022')
('606521011','TP000009','21/11/2022')
('891898667','TP000010','04/12/2022')
('570915226','SF000004','07/12/2022')
('499349949','SF000005','20/07/2023')
('361179436','SF000006','23/08/2023')


create table Deliveries 
Delivery_ID nvarchar(50) primary key
Date_of_delivery date NOT NULL
Delivery _Statuts nvarchar(50) foreign key references Students_Orders(Student_Order_Number));

insert into Deliveries Values

('KM0001','03/09/2022','in progress')
('KM0002','02/01/2023','in progress')
('KM0003','09/03/2023','in progress')
('KM0004','06/04/2023','in progress')
('KM0005','05/06/2023','in progress')
('KM0006','06/07/2023','in progress')
('KM0007','01/09/2023','in progress')
('KM0008','16/09/2023','in progress')


create table Rating_and_Reviews (
ID nvarchar(50) primary key
Book_ID nvarchar(50) foreign key references Books(Book_ID)
Review_Date date NOT NULL
Review nvarchar(300)
Student_ID nvarchar(50) foreign key references Students(Student_ID)
Rating nvarchar(10));


insert into Rating and Reviews Values

('XU0001','IS0010','13/02/2023','Done','TP000011','5/10')
('XU0002','IS0011','28/02/2023','in progress','TP000012','3/10')
('XU0003','IS0012','03/03/2023','Done','TP000013','1/10')
('XU0004','IS0013','08/03/2023','Done','TP000014','2/10')
('XU0005','IS0014','03/07/2023','Done','TP000015','10/10')
('XU0006','IS0015','05/07/2023','in progress','TP000016','4/10')
('XU0007','IS0016','11/07/2023','in progress','TP000017','1/10')
('XU0008','IS0017','17/07/2023','in progress','TP000018','7/10')