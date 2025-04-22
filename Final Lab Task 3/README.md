## Final Lab Task 3: Table Manipulation
the following are the task that need to implemented using MySQL statement. Make Sure to complete them in the order specified:

Required output per Test Cases: (To be posted in Github)   
1. Query statements (Task 1 - 4 )   
2. Table Structure (Task 1 - 4 )   
3.  ER Diagram or Relational schema from phpMyAdmin or Workbench (pdf or jpg file)   
4. Sql copy of the database and table  structures  
## STEP 1
- Open XAMPP and start the Apatche and MySQL then open MySQL workbench
- Add a new connection
- Click the connection made
## STEP 2:
- Create a DATABASE BY using  
 `CREATE DATABE database_name`
- Use the database that has created by using  
  `USE database_name`
## TASK 1:
Create a table named *products* with the following fields:
`id`: Unique integer, auto-increment, primary key.
`product_name`: String (VARCHAR) with a maximum length of 100, cannot be null.
`price`: Decimal
#### CODE:
`CREATE TABLE products (id INT(3) UNIQUE AUTO_INCREMENT PRIMARY KEY, product_name VARCHAR(100) NOT NULL, 
price FLOAT(7,4) NOT NULL);`
#### HERE IS THE QUERY STATEMENT AND TABLE STRUCTURE
![](image/Screenshot%202025-04-12%20145310.png)

## TASK 2: 
Add a `CHECK` constraint to ensure that the `price` of the product must be greater than 0.
#### CODE:
`ALTER TABLE products MODIFY COLUMN price FLOAT(7,2) CHECK (price > 0);`
#### HERE IS THE QUERY STATEMENT AND TABLE STRUCTURE
![](image/Screenshot%202025-04-12%20145356.png)

## TASK 3: Insert the products that will not violate the check constraint into the products table:
- Product 1: "Laptop", 999.99
- Product 2: "Headphones", -49.99
- Product 3: "Smartphone", 599.99
- Product 4: "Tablet", 299.99
- Product 5: "Monitor", -149.99
- Product 6: "Keyboard", 19.99
- Product 7: "Mouse", 14.99
- Product 8: "Desk Lamp", 24.99
- Product 9: "External Hard Drive", -79.99
- Product 10: "Speakers", 9.99
#### CODE:
(I insert only the greater than 0 not with the negative value)
`INSERT INTO products(id, product_name, price) VALUES (1, 'Laptop', 999.99), (3, 'Smartphone', 599.99), (4, 'Tablet', 299.99),
 (6, 'Keyboard', 19.99), (7, 'Mouse', 14.99), (8, 'Desk Lamp', 24.99),  (10, 'Speakers', 9.99);`
#### HERE IS THE QUERY STATEMENT AND TABLE STRUCTURE
![](image/Screenshot%202025-04-12%20145502.png)

## TASK 4:
 Modify the `product_name` field to have a maximum length of 120 characters.
#### CODE:
` ALTER TABLE products MODIFY COLUMN product_name VARCHAR(120) NOT NULL;`
#### HERE IS THE QUERY STATEMENT AND TABLE STRUCTURE
![](image/Screenshot%202025-04-12%20145530.png)

### HERE IS THE ER DIAGRAM
![](image/Screenshot%202025-04-12%20151511.png)
#### HERE IS THE MYSQL FILE
[Products Table](file/task_3_db_products.sql)  
 
