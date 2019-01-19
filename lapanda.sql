use master
drop database  lapanda
create database Lapanda
use lapanda



create table seller(
				idUser int IDENTITY(1,1) primary key,
				NameUser nvarchar(50),
				phoneNumber int ,
				gmail varchar (50),
				general nvarchar (50),
				form varchar (50)
				)
create table loginUser(
				idLogin int IDENTITY(1,1) primary key,
				userName nvarchar (50)  ,
				password nvarchar (50),
				idUser int,
				foreign key (idUser) references seller(idUser)
			
)
create table product (
						idProduct int IDENTITY(1,1) primary key,
						nameProduct varchar (50),
						linkProduct varchar (MAX),
						price float,
						idUser int foreign key references seller(idUser),
						typeProduct varchar(MAX),
						note varchar(max)
						 )

create table orderProduct (
						idOrder int IDENTITY(1,1) primary key,
						idProduct int foreign key references product(idProduct),
						nameCustomer varchar (50),
						phoneNumber int ,
						adressCustomer nvarchar (50),
						quality int ,
						timeOrder varchar(max)
					)

insert into seller (NameUser,phoneNumber,gmail,general,form) values ('admin',01649982920,'duclongph1997@gmail.com','VietNam','person')
insert into seller (NameUser,phoneNumber,gmail,general,form) values ('long',01649982920,'duclongph@gmail.com','VietNam','person')

insert into loginUser(userName,password,idUser) values ('admin','1234',1)
insert into loginUser(userName,password,idUser) values ('long','abc@123',2)

insert into product (nameProduct, price,linkProduct, idUser,typeProduct,note) values ('Samsung Galaxy J7',4990,'image/galaxyj7.jpg',1,'phone','Iron Man shock mount for Sam Sung J7 Pro. The combination of rugged PC and TPU provides the ultimate in shock and protection. Armor design ideas in the famous film Iron Man. It features an external hard outer case and a soft inner lining that prevents scratching, as thick as the majority of the back covers are of two other layers; comes with stand in the middle of the back support horizontal view film player, listen to music, play games, surf the web, .... The product has many colors.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('Samsung Galaxy J3',3860,'image/galaxyj3.jpg',1,'phone','New products, raw seal directly imported from the manufacturer or distributor genuine.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('Samsung Galaxy J2',220,'image/galaxyj2.jpg',2,'phone','The Samsung Galaxy J2 Prime has a slim design and cornering straps that make it fit in the palm of your hand, allowing you to easily and comfortably hold the phone.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('DTDD MAXX N3310',1720,'image/DTDD MAXX N3310.jpg',2 ,'phone','Sim owns the classical design language but no less youthful, oval shape combined with white border around the screen, the keyboard layout gives a familiar look, but the navigation keys of The machine has been redesigned to look more modern and eye catching. At the same time, the case is made of plastic with back cover can be separated to replace the battery as well as sim.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('chuot quang M90',550,'image/chuot quang M90.jpg',1,'electronic components','The Newman M90 Optical Mouse is a palm-sized, palm-sized, lightweight, fast 1000 dpi, optical sensor with USB port. Newmen M180 has a classic design of left mouse, right mouse and middle mouse.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('cardHIS570',749,'image/cardHIS570.jpg',1,'electronic components','Power supply for the RX 570 IceQ X2 is an 8-pin power supply, combined with a PCIe foot that will take the total power to 225W, too much for the RX 570. This is also a design experience from foot scandal. PCIe of the motherboard due to the standard RX 480 is due to need more power than the 150W from the PCIe foot and a 6-pin battery.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('CARDHISRX470',617,'image/CARDHISRX470.png',2,'electronic components','Start to spin when the GPU temperature reaches about 600C. Stop spinning when started & when GPU temperature drops to about 500C. Provide a silence environment for enjoying Home Movie & Casual Gaming')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('MAINBIOSTAR',617,'image/MAINBIOSTAR.jpg',2,'electronic components','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('dell xps 9360_4',617,'image/9237_dell_xps_9360_4.jpg',2,'laptop','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('Asus X540 LJXX315D',617,'image/asuszenbookux410.png',2,'laptop','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('asus zenbook ux410',617,'image/asuszenbookux410.jpg',2,'laptop','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('DELL INSPIRONN5567-M5I5384 GREY',617,'image/DELLINSPIRONN5567M5I5384GREY.jpg',1,'laptop','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values (' screen Acer K242HL 24.0Inch LED',617,'image/AcerK242HL24.0InchLED.jpg',1,'screen','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values (' screen LG 27MP 5927Inch IPS',617,'image/LG27MP5927InchIPS.jpg',1,'screen','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values (' screen Dell E2316H 23.0Inch LED',617,'image/DellE2316H23.0InchLED.jpg',1,'screen','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')

insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('chance laptop Asus 1018',617,'image/chancelaptopAsus1018.jpg',1,'battery and charger','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('change laptop Asus 1006',617,'image/changelaptopAsus1006.jpg',1,'battery and charger','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')
insert into product (nameProduct, price,linkProduct,idUser, typeProduct,note) values ('pin dell n4050',617,'image/pindelln4050.jpg',1,'battery and charger','The Z97Z7 does not outperform other midrange motherboards: Full size ATX, two PCIe x16 slots and a nice heat sink. If I do not know price, I will definitely estimate the product price is about 30% higher than the actual.')


insert into orderProduct (idProduct,nameCustomer,phoneNumber,adressCustomer,quality)
values (2,'hai',1912121212,'130-pho hien-hong chau',2)



select * from orderProduct
select *from  product
select * from seller
select * from loginUser
select * from product  where idUser=2
select * from product where nameProduct like '%chuot%'
update seller set general='Vietnamese'
where idUser=2 
delete from product where idProduct =8

select b.idOrder,a.nameProduct ,b.nameCustomer, b.phoneNumber,b.adressCustomer, b.quality from product as a join orderProduct as b 
on a.idProduct = b.idProduct
where a.idUser=1

select * from product where idProduct =1
insert into orderProduct (idProduct,nameCustomer,phoneNumber,adressCustomer,quality) 
values (3,'long',121231,'120-phohien-hongchau',1)

select b.idUser from seller as a join loginUser as b 
on  a.idUser= b.idUser
where gmail= 'duclongph1997@gmai'

delete from product where idProduct=15
delete from orderProduct where idOrder=3

update product set  note= 'The Newman M90 Optical Mouse is a palm-sized, palm-sized, lightweight, fast 1000 dpi, optical sensor with USB port. Newmen M180 has a classic design of left mouse, right mouse and middle mouse.' where idProduct=5