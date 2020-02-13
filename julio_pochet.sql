-- Tire Shop Inventory App

/* This file will contain all the SQL queries to create the tables/columns/constraints/relationships and insert all of your data.
You can use specially formatted files, called delimited text files, to import data in bulk using SQL's COPY command like so:
      COPY table_name
      FROM '/path/to/file.csv'
      WITH (FORMAT CSV, HEADER); */

CREATE DATABASE tire_shop;

CREATE TABLE products (
  product_id int, -- -- IT IS IDENTITY
  product_name varchar(100), --needs to allow nulls
  category_id int, --needs to allow nulls
  supplier_id int, --needs to allow nulls
  purchase_price decimal(9,2), --needs to allow nulls
  sales_price decimal(9, 2), --needs to allow nulls
  part_number,
  product_label,
);

CREATE TABLE product_sizes (
  product_id int, --needs to allow nulls
  size_id int, --needs to allow nulls
);

CREATE TABLE sales_orders (
  invoice_number int, -- -- IT IS IDENTITY
  invoice_date datetime, --needs to allow nulls
  customer_id int, --needs to allow nulls
  quantity decimal(9,2), --needs to allow nulls
  grand_total decimal(9,2), --needs to allow nulls
  discount decimal(9,2), --needs to allow nulls
  net decimal(9,2), --needs to allow nulls
  cash decimal(9,2), --needs to allow nulls
  balance decimal(9,2) --needs to allow nulls
);

CREATE TABLE sales_orders_details (
  detail_id int, -- -- IT IS IDENTITY
  invoice_number int, --needs to allow nulls
  stock_id  int, --needs to allow nulls
  price int, --needs to allow nulls
  quantity decimal(9,2), --needs to allow nulls
  total_price decimal(9,2) --needs to allow nulls
);

CREATE TABLE tires (
id serial,
tire_part_number varchar(50),
tire_size varchar(50),
tire_name varchar(50),
brand varchar(50),
performance_category varchar(50),
vehicle_type varchar(50),
cost_per_tire numeric,
stock_quantity numeric,
total_value numeric,
ply_rating varchar(10),
mileage_warranty varchar(10),
PRIMARY KEY (id)
);

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


CREATE TABLE wheels (
  id serial,
  wheel_part_number varchar(50),
  wheel_name varchar(50),
  part_number varchar(100),
  product_label varchar(50),
  brand varchar(50),
  bolt_pattern varchar(20),
  weight int,
  off_set varchar(10),
  finish varchar(50),
  cost_per_wheel numeric,
  stock_quantity int,
  total_value numeric,
  PRIMARY KEY (id)
);

CREATE TABLE installers (
  id serial,
  name varchar(50),
  street varchar(50),
  city varchar(50),
  state varchar(15),
  zipcode varchar(20),
  phone_number varchar(50),
  reviews int,
  review_stars int,
  open_hours varchar(100)
);

CREATE TABLE customers (
  id serial,
  customer_id int, -- -- IT IS IDENTITY
  name varchar(100), --needs to allow nulls
  mobile varchar(15), --needs to allow nulls
  address varchar(200) --needs to allow nulls
);

CREATE TABLE product_sizes (
  id serial,
  product_id int, --needs to allow nulls
  size_id int --needs to allow nulls
);

CREATE TABLE stock (
  id serial,
  stock_id int, -- -- IT IS IDENTITY
  product_id int, --needs to allow nulls
  size_id int, --needs to allow nulls
  purchase_price decimal(9,2), --needs to allow nulls
  sales_price decimal(9,2), --needs to allow nulls
  quantity decimal(9,2) --needs to allow nulls
);

CREATE TABLE users_login (
  username varchar(50), -- -- IT IS IDENTITY
  password varchar(50)  --needs to allow nulls
);
