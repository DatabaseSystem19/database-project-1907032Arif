-----------------Insertion-----------------------------Insertion to customer tables
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C1', 'John Doe', 'johndoe@example.com', '123 Main St, Anytown, 
USA', '123-456-7890');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C2', 'Jane Smith', 'janesmith@example.com', '456 Elm St, 
Othertown, USA', '987-654-3210');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C3', 'Alice Johnson', 'alicejohnson@example.com', '789 Oak Ave, 
Anothercity, USA', '456-789-1234');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C4', 'Bob Wilson', 'bobwilson@example.com', '321 Pine Rd, 
Differenttown, USA', '789-123-4567');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C5', 'Sarah Davis', 'sarahdavis@example.com', '567 Cedar Ln, 
Somewhere, USA', '234-567-8901');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C6', 'Michael Thompson', 'michaelthompson@example.com', '890 
Walnut Ave, Elsewhere, USA', '678-901-2345');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C7', 'Emily Wilson', 'emilywilson@example.com', '432 Maple St, 
Anytown, USA', '012-345-6789');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C8', 'David Lee', 'davidlee@example.com', '765 Birch Rd, 
Othertown, USA', '901-234-5678');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C9', 'Jennifer Miller', 'jennifermiller@example.com', '109 Pine 
Ln, Anothercity, USA', '345-678-9012');
 INSERT INTO Customers (customer_id, name, email, address, phone)
 VALUES ('C10', 'Ryan Harris', 'ryanharris@example.com', '876 Oak St, 
Differenttown, USA', '678-901-2345');---Insertion into products table
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P1', 'Product A', 10.99, 'Description for Product A');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P2', 'Product B', 19.99, 'Description for Product B');
 INSERT INTO Products (product_id, name, price, description)
VALUES ('P3', 'Product C', 8.49, 'Description for Product C');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P4', 'Product D', 14.99, 'Description for Product D');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P5', 'Product E', 6.99, 'Description for Product E');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P6', 'Product F', 12.49, 'Description for Product F');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P7', 'Product G', 9.99, 'Description for Product G');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P8', 'Product H', 17.99, 'Description for Product H');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P9', 'Product I', 5.99, 'Description for Product I');
 INSERT INTO Products (product_id, name, price, description)
 VALUES ('P10', 'Product J', 11.99, 'Description for Product J');-- Insert into order table
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O1', 'C1', SYSDATE, 50.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O2', 'C2', SYSDATE, 30.49);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O3', 'C3', SYSDATE, 25.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O4', 'C4', SYSDATE, 40.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O5', 'C5', SYSDATE, 35.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O6', 'C6', SYSDATE, 45.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O7', 'C7', SYSDATE, 20.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O8', 'C8', SYSDATE, 15.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O9', 'C9', SYSDATE, 55.99);
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O10', 'C10', SYSDATE, 60.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O11', 'C1', SYSDATE, 75.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O12', 'C1', SYSDATE, 62.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O13', 'C2', SYSDATE, 45.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O14', 'C3', SYSDATE, 28.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O15', 'C3', SYSDATE, 35.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O16', 'C5', SYSDATE, 39.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O17', 'C6', SYSDATE, 52.99);
 INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
 VALUES ('O18', 'C6', SYSDATE, 67.99);-- Insert data into Order_Items table
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI4', 'O3', 'P4', 'C3', 4);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI5', 'O4', 'P5', 'C4', 2);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI6', 'O5', 'P6', 'C5', 1);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
VALUES ('OI7', 'O6', 'P7', 'C6', 3);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI8', 'O7', 'P8', 'C7', 2);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI9', 'O8', 'P9', 'C8', 1);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI10', 'O9', 'P10', 'C9', 3);
 INSERT INTO Order_Items (order_item_id, order_id, product_id, customer_id, 
quantity)
 VALUES ('OI1', 'O1', 'P1', 'C1', 2);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI55', 'O18', 'P5', 3, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI56', 'O18', 'P6', 2, 24.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI3', 'O2', 'P3', 3, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI4', 'O2', 'P4', 2, 8.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI5', 'O3', 'P5', 1, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI7', 'O3', 'P7', 1, 17.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI8', 'O4', 'P2', 2, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI9', 'O4', 'P5', 3, 14.99);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI10', 'O4', 'P9', 1, 8.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI11', 'O5', 'P3', 2, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI12', 'O5', 'P4', 1, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI13', 'O5', 'P8', 1, 10.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI14', 'O6', 'P1', 2, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI15', 'O6', 'P2', 1, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI16', 'O6', 'P5', 3, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI17', 'O7', 'P3', 2, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI18', 'O7', 'P4', 1, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI19', 'O7', 'P6', 1, 24.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI20', 'O8', 'P1', 1, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI21', 'O8', 'P3', 3, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI22', 'O8', 'P8', 2, 10.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
VALUES ('OI23', 'O9', 'P2', 2, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI24', 'O9', 'P4', 1, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI25', 'O9', 'P7', 2, 17.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI26', 'O10', 'P1', 3, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI27', 'O10', 'P3', 1, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI28', 'O10', 'P5', 2, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI29', 'O11', 'P2', 1, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI30', 'O11', 'P4', 2, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI31', 'O11', 'P8', 1, 10.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI32', 'O12', 'P1', 3, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI33', 'O12', 'P2', 2, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI34', 'O12', 'P6', 1, 24.99);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI35', 'O13', 'P3', 2, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI36', 'O13', 'P5', 1, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI37', 'O13', 'P9', 2, 8.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI38', 'O14', 'P2', 1, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI39', 'O14', 'P4', 2, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI40', 'O14', 'P7', 1, 17.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI41', 'O15', 'P1', 3, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI42', 'O15', 'P3', 1, 12.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI43', 'O15', 'P5', 2, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI44', 'O16', 'P4', 1, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI45', 'O16', 'P6', 2, 24.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI46', 'O17', 'P2', 1, 19.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI47', 'O17', 'P3', 3, 12.99);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI48', 'O17', 'P5', 2, 14.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI49', 'O17', 'P7', 1, 17.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI50', 'O18', 'P1', 1, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI51', 'O18', 'P4', 2, 15.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI52', 'O18', 'P6', 1, 24.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI53', 'O18', 'P8', 3, 11.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI54', 'O18', 'P10', 2, 9.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI55', 'O18', 'P9', 1, 8.99);
 INSERT INTO order_items (order_item_id, order_id, product_id, quantity, 
unit_price)
 VALUES ('OI56', 'O18', 'P3', 2, 12.99);-------------------------------------Aggregate Function---------------------------Calculate the total number of customers:
 SELECT COUNT(*) AS total_customers FROM Customers;--Calculate the average price of products:
 SELECT AVG(price) AS average_price FROM Products;--Find the maximum price among all products:
 SELECT MAX(price) AS max_price FROM Products;--Determine the minimum quantity ordered in Order_Items:
 SELECT MIN(quantity) AS min_quantity FROM Order_Items;--Calculate the number of prouducts in each order:
 SELECT order_id, count(*) as number_of_products
FROM Order_Items
 GROUP BY order_id;----using group by and having--------
SELECT customer_id, COUNT(*) as order_count
 FROM Orders
 GROUP BY customer_id
 HAVING COUNT(*) > 1;--Calculate the total amount for each order:
 SELECT order_id, SUM(quantity * unit_price) AS total_amount
 FROM Order_Items
 GROUP BY order_id;---------------------------Join------------------------------------Inner Join:
 SELECT *
 FROM Customers
 INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;--Left Join:
 SELECT Customers.customer_id, Customers.name, Orders.order_id
 FROM Customers
 LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;--Right Join:
 SELECT Customers.customer_id, Customers.name, Orders.order_id
 FROM Customers
 RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;--Full Outer Join:
 SELECT Customers.customer_id, Customers.name, Orders.order_id
 FROM Customers
 FULL OUTER JOIN Orders ON Customers.customer_id = Orders.customer_id;----------------------------Union, intercept, except---------------------------
SELECT order_id FROM Orders
 UNION
 SELECT customer_id FROM Customers;
 SELECT order_id FROM Orders
 INTERSECT
 SELECT customer_id FROM Customers;----customers who brought the product 'P1' using subquery
select customer_id from orders where order_id in (select order_id from 
order_items where product_id in (select product_id from products where 
product_id = 'P1'));----customers who brought the product 'P1' using join
 select customer_id from orders join (order_items join products on 
order_items.product_id = products.product_id) using(order_id) where 
products.product_id = 'P1';-----customer name who brought the product 'P1'
 select name from customers where customer_id in (select customer_id from 
orders join (order_items join products on order_items.product_id = 
products.product_id) using(order_id) where products.product_id = 'P1'
 );-----------------------With statement to find max priced product
 with max_price(val) as (select max(price) from products)
 select * from products, max_price where products.price = max_price.val;------------------------set membership function-------------
select * from customers where customer_id = 'C1' and name in (select name 
from customers where name like '%John%');
 select * from customers where customer_id = 'C1' or name in (select name 
from customers where name like '%John%');
 select * from customers where customer_id = 'C1' and name not in (select 
name from customers where name like '%John%');-----------------------some, all, exist, unique--------------
select * from products where price > some (select price from products 
where price > 10);
 select * from products where price > all (select price from products where 
price < 10);
 select * from orders where total_amount > 50 and exists(select Customer_id 
from orders);
 select unique customer_id from orders where total_amount > 50;----------------------string operations------------------
select name from customers where name like '________';
 select name from customers where name like '%John%';---------------------Views-----------------------
create view show_name as select name from customers;
 select name from show_name;---views using other views
 create view particular_name as select name from show_name where name like 
'________';
 select name from particular_name;