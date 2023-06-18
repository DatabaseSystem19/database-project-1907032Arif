drop table customers;
 drop table products;
 drop table order_items;
 drop table orders;
 CREATE TABLE Customers (
 customer_id VARCHAR2(20) PRIMARY KEY,
 name VARCHAR2(100) NOT NULL,
 email VARCHAR2(100) UNIQUE NOT NULL,
 address VARCHAR2(200),
 phone VARCHAR2(20)
 );
 CREATE TABLE Products (
 product_id VARCHAR2(20) PRIMARY KEY,
 name VARCHAR2(100) NOT NULL,
 price NUMBER,
 description VARCHAR2(200)
 );
 CREATE TABLE Orders (
 order_id VARCHAR2(20) PRIMARY KEY,
 customer_id VARCHAR2(20),
 order_date DATE,
 total_amount NUMBER check (total_amount > 0),
 CONSTRAINT fk_orders_customers
 FOREIGN KEY (customer_id) REFERENCES Customers (customer_id) on delete 
cascade
 );
 CREATE TABLE Order_Items (
 order_item_id VARCHAR2(20) PRIMARY KEY,
 order_id VARCHAR2(20),
 product_id VARCHAR2(20),
 quantity NUMBER check (quantity > 0),
 unit_price NUMBER check (unit_price > 0),
 CONSTRAINT fk_order_items_orders
 FOREIGN KEY (order_id) REFERENCES Orders (order_id),
 CONSTRAINT fk_order_items_products
 FOREIGN KEY (product_id) REFERENCES Products (product_id)
 );
 ALTER TABLE Customers
 ADD age NUMBER;
 alter table Customers modify age varchar(20);
 alter table Customers rename column age to customer_age;
 ALTER TABLE Customers Drop column customer_age;