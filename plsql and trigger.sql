  
set serveroutput on;  ---procedure using IN, OUT and IN OUT parameter  
create or replace procedure calculate_order_total(  
p_order_id IN Orders.order_id%type,  
p_total_amount OUT Orders.total_amount%type,  
p_discount_rate IN OUT NUMBER  
)  
Is  
Begin  
select total_amount into p_total_amount from Orders where order_id = p_order_id;  
p_total_amount := p_total_amount - p_total_amount*p_discount_rate;  
p_discount_rate := p_discount_rate + 0.1;  
END;  
/  
  
declare   
p_order_id orders.order_id%type := ’O4’;  
p_total_amount orders.total_amount%type;  
p_discount_rate number := 0.2;  
begin  
calculate_order_total(p_order_id, p_total_amount, p_discount_rate);  
dbms_output.put_line('Order Id: '|| p_order_id || ', Order amount: ' || p_total_amount || ', Discount Rate: ' ||
 p_discount_rate);  
end;  
/  
  
  
  
  -- Using varray, loop, and cursor  
  -- Declare a VARRAY type  
CREATE OR REPLACE TYPE product_list IS VARRAY(10) OF VARCHAR2(100);  
/  -- Declare a procedure to populate VARRAY using cursor  
CREATE OR REPLACE PROCEDURE get_customer_products(p_products_list OUT product_list) IS  
  -- Declare a cursor  
  CURSOR c_products IS  
    SELECT name FROM products;  
   -- Variable to store the fetched row  
  v_product_name products.name%TYPE;  
BEGIN  
 -- Open the cursor  
  OPEN c_products;  
   -- Initialize the VARRAY  
  p_products_list := product_list();  
     
  -- Fetch and populate VARRAY with each row  
  LOOP  
    -- Fetch the next row into the variable  
    FETCH c_products INTO v_product_name;  
      
    -- Exit the loop if no more rows  
    EXIT WHEN c_products%NOTFOUND;  
      
      -- Add the fetched value to the VARRAY  
    p_products_list.EXTEND;  
    p_products_list(p_products_list.COUNT) := v_product_name;  
  END LOOP;  
   -- Close the cursor   
  CLOSE c_products;  
END;  
/  
  
   
 DECLARE  
 v_products product_list;  
 BEGIN  
    get_customer_products(v_products);  
      
    for i IN 1 .. v_products.COUNT LOOP  
        DBMS_OUTPUT.PUT_LINE('Product: ' || v_products(i));  
    END LOOP;  
          
 END;  
 /  
   
  
   
 ----Showing rowcount, rowfound, cursor  
 create or replace procedure process_orders_sec  
is  
CURSOR c_order IS  
    select order_id, customer_id, order_date, total_amount from orders;  
    v_order_row c_order%rowtype;  
    v_row_count integer:=0;  
      
 begin  
    open c_order;  
      
    loop  
        fetch c_order into v_order_row;  
        exit when c_order%notfound;  
          
        dbms_output.put_line('order_id: ' || v_order_row.order_id||', Customer_ID: '||v_order_row.customer_id||', Order Date: '||v_order_row.order_date||', Total amount: '||v_order_row.total_amount);  
          
        v_row_count := v_row_count+1;  
    end loop;  
     
     dbms_output.put_line('Total orders processed: '||c_order%rowcount);  
     dbms_output.put_line('Total orders processed: '||v_row_count);  
     CLOSE c_order;  
end;  
/  
  
BEGIN  
  process_orders_sec;  
END;  
/  -----use if elseif else ------  
create or replace procedure check_order_total(p_id IN ORDERS.ORDER_ID%type) is  
amount ORDERS.TOTAL_AMOUNT%type;  
begin  
select total_amount into amount from ORDERS where order_id = p_id;  
IF amount > 1000 then  
dbms_output.put_line('Order ' || p_id || 'is large');  
ELSIF amount <1000 AND amount>500 then  
dbms_output.put_line('Order ' || p_id || 'is medium');  
ELSE   
dbms_output.put_line('Order ' || p_id || 'is small');  
end if;  
end;  
/  
declare  
p_id ORDERS.ORDER_ID%type := ’O4’;  
begin  
check_order_total(p_id);  
end;  
/  ----a function-----  
create or replace function calculate_total(p_quantity in number, p_unit_price in number)   
return number is  
v_total_price number;  
begin  
v_total_price := p_quantity*p_unit_price;  
return v_total_price;  
end;  
/  ------------function in a query-----------  
SELECT order_id,  calculate_total(2, 3) AS total_price  
FROM Orders;  
show errors procedure check_order_total;  






----------Trigger--------

CREATE OR REPLACE TRIGGER update_customer_info_trigger
AFTER UPDATE ON Orders
FOR EACH ROW
BEGIN
  -- Update the customer's phone number in the Customers table
  UPDATE Customers
  SET phone = :NEW.phone
  WHERE customer_id = :NEW.customer_id;
END;
/


CREATE OR REPLACE TRIGGER insert_into_order_items_trigger
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
  -- Insert a row into Order_Items
  INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price)
  VALUES (:NEW.order_item_id, :NEW.order_id, :NEW.product_id, :NEW.quantity, :NEW.unit_price);
END;
/

CREATE OR REPLACE TRIGGER delete_from_order_items_trigger
AFTER DELETE ON Orders
FOR EACH ROW
BEGIN
  -- Delete rows from Order_Items
  DELETE FROM Order_Items
  WHERE order_id = :OLD.order_id;
END;
/