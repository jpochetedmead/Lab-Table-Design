-- Tires Store
-- Selling Tires & Wheels Online

-- CREATE DATABASE tires_shop;

-- In this table we have the stock quantity and the prices for each item
CREATE TABLE products (
-- (PK) product_id [Three other tables (tires, wheels, sales_orders) have a foreign key refencing to this primary key.]
  product_id bigserial PRIMARY KEY,
  stock_quantity int NOT NULL UNIQUE,
  item_price numeric(9,2) NOT NULL UNIQUE
);

INSERT INTO products (stock_quantity, item_price)
VALUES (259, 65.05),
(250, 49.18),
(472, 40.50),
(155, 70.20),
(322, 50.01),
(89, 65.33),
(97, 57.20),
(133, 80.10),
(244, 40.10),
(782, 65.99),
(500, 90.20),
(400, 95.01),
(170, 70.77),
(560, 60.66),
(220, 50.55),
(345, 40.44);


 -- This tires table below contains are the tires details.
CREATE TABLE tires (
-- (PK)(FR) product_id [This column is both the primary key for the table and establishes a one-to-one relationship with the products table]
  product_id bigint PRIMARY KEY REFERENCES products(product_id),
  tire_id int,
  trim_id int,
  tire_trim varchar(50),
  make_id int,
  make varchar(50),
  model_id int,
  model varchar(50),
  front_tires_id int,
  front_tires_size varchar(50),
  front_load_range_id int,
  front_load_range varchar(10),
  rear_tires_id int,
  rear_tires_size varchar(50),
  rear_load_range_id int,
  rear_load_range varchar(10),
  year int,
  date_update date
);

INSERT INTO tires (product_id, tire_id, trim_id, tire_trim, make_id, make, model_id, model,
front_tires_id, front_tires_size, front_load_range_id, front_load_range,
rear_tires_id, rear_tires_size, rear_load_range_id, rear_load_range, year, date_update)
VALUES (1, 1230, 2627, 'W/O TPMS', 1, 'Acura', 3709, 'MDX', 148, '225 /75 R15', 2, 'SL', 148, '225 /75 R15', 2, 'SL', 2019, '2020-01-22'),
(2, 1231, 2627, 'W/O TPMS', 8, 'Ford', 4970, 'Mustang', 150 , '225 /75 R15', 2, 'SL', 150, '225 /75 R15', 2, 'SL', 2017, '2019-09-22'),
(3, 2075, 1892,'3.0', 2,'Audi', 10551,'A8L', 164,'235 /55 R19', 2,'SL', 164,'235 /55 R19', 2,'SL', 2018,'2019-12-22'),
(4, 2076, 1892,'3.0', 5,'Nissan', 10480,'Maxima', 173,'235 /55 R18', 2,'SL', 173,'235 /55 R18', 2,'SL', 2018,'2020-01-22'),
(5, 7517, 5186,'RS Coupe', 11,'Chevrolet', 109,'Camaro', 128,'195 /65 R15', 2,'SL', 109,'195 /65 R15', 2,'SL', 2018,'2019-10-22'),
(6, 7518, 5186,'RS Coupe', 11,'Chevrolet', 110,'Corvette', 135,'195 /65 R18', 2,'SL', 110,'195 /65 R18', 2,'SL', 2019,'2019-12-22');

/*
INSERT INTO tires (tire_part_number,tire_size, tire_name, brand,
  performance_category, vehicle_type, cost_per_tire, stock_quantity, total_value, mileage_warranty)
VALUES ('6H04511','ST175/80R13', 'Carlisle Radial Trail HD', 'CARLISLE', 'Boat Trailer Tires', 'Trailer', '53.99', '4', '215.96', 'NA'),
('WD1233','ST235/85R16','Hi Run JK42 Trailer', 'HI RUN', 'Boat Trailer Tires', 'Trailer','93.99','4','375.96', 'NA'),
('95681',	'235/65R17', 'Ironman Radial A/P', 'IRONMAN TIRES', 'All Season', 'Truck SUV', '107.99', '4', '431.96', 'NA'),
('6H04651','ST235/85R16','Carlisle Radial Trail HD','Carlisle','Boat Trailer Tires','Trailer','129.99','4','519.96', '40000'),
('28963863', '245/55R18', 'Falken Ziex ZE960 A/S',	'FalkenTire',	'High Performance All Season',	'Car', '150.00', '4', '600.00', '65000'),
('28034841',	'255/70R18', 'Falken Wildpeak A/T3W',	'FALKEN TIRE',	'All Terrain',	'Truck SUV', '172.00', '4', '688.00', '55000'),
('362790', 'LT275/65R18',	'Toyo Open Country H/T',	'ToyoTires',	'All Season',	'Truck SUV',	'209.35',	'4', '837.40', '60000'),
('15500220000',	'255/50ZR20XL',	'Continental ExtremeContact DWS06',	'CONTINENTAL',	'Ultra High Performance All Season', 'Car',	'255.99', '4', '1023.96', '50000'),
('56317', '245/50ZR19XL', 'Michelin Pilot Sport A/S 3 Plus', 'MICHELIN', 'Ultra High Performance All Season', 'Car', '277.99', '4', '1111.96', '45000');
*/


--This wheels table below contains all the wheels details
CREATE TABLE wheels (
-- (PK)(FR) product_id [This column is both the primary key for the table and establishes a one-to-one relationship with the products table]
  product_id bigint PRIMARY KEY REFERENCES products(product_id),
  wheel_id varchar(30),
  wheel_name varchar(50),
  brand varchar(50),
  wheel_size varchar(20),
  bolt_pattern varchar(20),
  weight numeric(4,2),
  off_set varchar(50),
  finish varchar(50),
  cost_per_wheel numeric
);

INSERT INTO wheels (product_id, wheel_id, wheel_name, brand, wheel_size, bolt_pattern, weight, off_set, finish, cost_per_wheel)
VALUES (7, '645B-7900512', 'Dropstars 645B', 'Dropstars Wheels', '17X9', '5X4.50', 29.0, '-12', 'Painted Black', 240),
(8, '409B-8805742', 'Motiv 409B', 'MOTIV LUXURY ALLOYS', '18X8', '5X4.50', 28.0, '+42', 'Painted Black', 139),
(9, '302MB-2805740', 'Drifz 302MB Vortex', 'DRIFZ', '20X8', '5X4.50', 30.0, '+40', 'Machined', 179.99),
(10, '726MB-8806035', 'Gear Alloy 726MB Big Block', 'GEAR OFF ROAD', '18X8', '5X4.50', 26.5, '+35', 'Painted Black', 150),
(11, '541BZ-8806542', 'TIS 541BZ', 'TIS WHEELS', '18X8', '5X4.50', 30.5, '+42', 'Painted Others', 197.99),
(12, '417MBT-9851240', 'Motiv 417MBT Montage', 'MOTIV LUXURY ALLOYS', '19X8.5', '5X4.50', 33.0, '+40', 'Painted Black', 175),
(13, '922MB-2291615', 'Cruiser Alloy 922MB Kinetic', 'CRUISER ALLOY', '22X9.5', '5X115', 46.0, '+15', 'Painted Black', 120),
(14, '743BM-2106825', 'Gear Alloy 743BM Armor', 'GEAR OFF ROAD', '20X10', '6X135', 42.0, '-25', 'Painted Black', 125),
(15, '742-2096818', 'Gear Alloy 742BM Kickstand', 'GEAR OFF ROAD', '20X9', '6X135', 39.5, '+18', 'Painted Black', 270),
(16, '651-2216540', 'Dropstars 651MB', 'Dropstars Wheels', '22X10.5', '5X4.50', 47.0, '+40', 'Painted Black', 300);


CREATE TABLE customers (
-- (PK) customer_id [This column is the primary key for the customers table and establishes a relationship with the sales_orders table]
  customer_id bigserial PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) NOT NULL UNIQUE,
  phone varchar(20) NOT NULL UNIQUE,
  address varchar(100) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(30) NOT NULL,
  zipcode varchar(50) NOT NULL,
  country varchar(50) NOT NULL
);

INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zipcode, country)
VALUES ('Keegan','Inez','vestibulum@Nunc.net','1-194-399-7943','P.O. Box 156, 4447 Risus St.','Falun','W','634914','Virgin Islands, United States'),
('Kermit','Talon','nibh.enim@acfermentumvel.net','1-163-605-3568','950-7983 Pede Road','Civo','LOM','42344','United States'),
('Hiroko', 'Pascale', 'magna.sed.dui@nuncsedpede.net', '1-119-690-6759', 'P.O. Box 449, 4962 Ultrices. Av.', 'Osan', 'Gye', '22021-54256', 'Tonga'),
('Hedy', 'Samson', 'erat.neque.non@loremvitae.org', '1-974-345-6847', '658-4256 Nostra, Rd.', 'Orléans', 'CE', '71061', 'Åland Islands'),
('Clark', 'Micah', 'diam@gravidaPraesenteu.org', '1-568-585-6328', '546-9685 Dui Ave', 'Hidalgo del Parral', 'Chi', 'Z4675', 'Turkey'),
('Tara', 'Skyler', 'cursus.purus.Nullam@mauris.com', '1-820-329-0127', '4158 Massa. Rd.', 'Plauen', 'SN', '328393', 'Honduras'),
('Kiara', 'Hilda', 'nonummy.ultricies@Nunc.net', '1-256-843-0937', '258-8600 Sed Avenue', 'Dublin', 'Leinster', '258915', 'Seychelles'),
('Melodie', 'Quin', 'est@eu.ca', '1-610-121-2511', 'Ap #192-4143 Ut St.', 'Saint-Louis', 'AL', '969677', 'Åland Islands'),
('Merrill', 'Palmer', 'Etiam.imperdiet.dictum@gravidasit.org', '1-399-649-9710', '869-1629 Amet Ave', 'Ghanche', 'Gilgit Baltistan', '6084', 'Timor-Leste'),
('Unity', 'Moses', 'rhoncus@fringillamilacinia.com', '1-747-685-6728', '340-149 Luctus. Ave', 'Jaipur', 'Rajasthan', '6786', 'Guyana'),
('Wade', 'Uriah', 'luctus@interdum.com', '1-745-140-3244', '633-6839 A, St.', 'Cusco', 'Cusco', 'S1L 0A9', 'Comoros'),
('Zane', 'Jackson', 'dis@convallisante.ca', '1-702-798-1317', '4902 Pellentesque Avenue', 'San Rafael', 'Alajuela', 'Z5672', 'Iraq'),
('Felicia', 'Xandra', 'Nullam.scelerisque@Cras.co.uk', '1-773-223-9202', 'Ap #492-6048 Sit Rd.', 'Alexandra', 'South Island', '87251', 'Sudan'),
('Alice', 'Maxine', 'sed.sapien.Nunc@ametconsectetuer.org', '1-324-122-8047', 'P.O. Box 107, 9430 Convallis St.', 'Middelburg', 'Zl', '390178', 'Senegal'),
('Kameko', 'Jack', 'felis@sitametconsectetuer.net', '1-287-642-4733', '422-3026 Porttitor Road', 'Grey County', 'Ontario', '9548', 'Saint Kitts and Nevis'),
('Jared', 'Ursula', 'sem@vestibulum.org', '1-228-699-6438', 'Ap #659-1961 Nisl. Rd.', 'Cork', 'M', '575350', 'Suriname'),
('Jemima', 'Emily', 'elementum.sem@quisdiamPellentesque.net', '1-756-427-0051', 'Ap #718-2562 Ligula. St.', 'Apartadó', 'ANT', '6070 JE', 'Kenya'),
('Kathleen', 'Kylan', 'eleifend.nunc.risus@nislQuisque.edu', '1-924-768-4319', 'Ap #476-2285 Mattis St.', 'Hastings', 'North Island', '11-069', 'Moldova'),
('Montana', 'Jarrod', 'Donec@cursuset.co.uk', '1-898-209-0184', 'P.O. Box 919, 4789 Dis St.', 'Bhir', 'MH', '889624', 'Swaziland'),
('Wesley', 'Demetrius', 'tellus.Phasellus@odiotristiquepharetra.net', '1-998-121-4213', 'Ap #818-5836 Adipiscing Street', 'Ahmedabad', 'GJ', '44-975', 'Saint Vincent and The Grenadines'),
('Deanna', 'Axel', 'Nulla.aliquet.Proin@auguemalesuada.com', '1-199-274-1307', 'Ap #750-6266 Sodales Rd.', 'Vallentuna', 'AB', '20109', 'Eritrea');


-- These are the installers that the customers can send their products to get installed in their cars.
CREATE TABLE installers (
  --(PK) installers_id [This column is the primary key for the installers table and establishes a relationship with the sales_orders table]
  installers_id bigint PRIMARY KEY,
  name varchar(50),
  street varchar(50),
  city varchar(20),
  state varchar(20),
  zipcode int,
  phone_number varchar(20),
  reviews int,
  review_stars numeric(2,1),
  open_days varchar(50),
  open_hours varchar(50)
);

INSERT INTO installers (installers_id, name, street, city, state, zipcode, phone_number, reviews, review_stars, open_days, open_hours)
VALUES (1234, 'OALLEN TIRE SERVICE INC', '104 MEMORY LN', 'YORK', 'PA', 17602, '717-600-8844', 19, 5.0, 'Mon-Fri | Sun', '7:30 - 8:00 | 9:00 - 6:00'),
(4567, 'MONRO MUFFLER', '1529 OREGON PIKE', 'LANCASTER', 'PA', 17601, '717-390-8686', 73, 4.6, 'Mon-Fri | Sat | Sun', '7:30 - 7:00 | 7:30 - 6:00 | 9:00 - 5:00'),
(7890, 'FIRESTONE COMPLETE AUTO CARE', '08 W ORANGE ST', 'LANCASTER', 'PA', 17603, '717-392-4134', 21, 3.9, 'Mon-Fri', '7:00 - 6:00'),
(0123, 'MANHEIM TIRE & AUTO CENTER', '1018 LANCASTER RD', 'MANHEIM', 'PA', 17545, '717-664-4200', 46, 4.3, 'Thu | Mon, Tue, Wed, Fri', '7:00 - 7:00 | 7:00 - 6:00'),
(3456, 'MARTINS TIRE & ALIGNMENT', '179 TWIN COUNTY RD', 'MORGANTOWN', 'PA', 19543, '610-901-3993', 56, 5.0, 'Thu | Mon, Tue, Wed, Fri', '7:00 - 7:00 | 7:00 - 5:00'),
(6789, 'PEP BOYS #0364', '1700 FRUITVILLE PIKE', 'LANCASTER', 'PA', 17601, '717-291-0450', 53, 4.7, 'Sat | Mon-Fri | Sun', '7:30 - 8:00 | 7:30 - 9:00 | 9:00 - 6:00');


-- This sales_orders table has three foreign keys (customer_id, product_id, installers_id)]
CREATE TABLE sales_orders (
  order_number bigint PRIMARY KEY, -- (PK) order_number
  customer_id bigint REFERENCES customers(customer_id), -- (FK) customer_id
  product_id bigint REFERENCES products(product_id), -- (FK) product_id
  installers_id bigint REFERENCES installers(installers_id), -- (FK) installers_id
  order_date date,
  order_quantity numeric(9,2)
  --amount numeric(9,2)
);

INSERT INTO sales_orders (order_number, customer_id, product_id, installers_id, order_date, order_quantity/*amount*/)
VALUES (1658416, 2, 5, 6789, '2020-02-19', 4),
(3546211, 21, 3, 1234, '2019-12-04', 2),
(8439617, 18, 6, 4567, '2019-12-30', 8),
(2089815, 15, 9, 7890, '2020-01-15', 4),
(8439611, 8, 12, 0123, '2020-01-20', 4),
(9615460, 4, 16, 3456, '2020-02-18', 8),
(9089861, 5, 1, 0123, '2020-02-07', 4);
