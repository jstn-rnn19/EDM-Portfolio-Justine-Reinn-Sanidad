## Final Lab Task 2 : Transforming ER Model to Relational Tables

## Task Description: 
Given the ER diagram representing student assignment submissions, convert it into MySQL
tables. Capture all entities and their attributes, and define the relationships between students,
submissions, and assignments. Identify the primary and foreign keys and ensure proper representation of any dependent or weak entities.  
![ER model](image/model.png)
## REQUIRED OUTPUT
1. Query statements (Task 1-4 including the table relationship)
2. Table Structure (Task 1- 4 including the table relationship)
3. ER Diagram or Relational schema from phpMyAdmin or Workbench (pdf or jpg file)
4. Sql copy of the database and table structures
## STEP 1:
- Open XAMPP and start the Apatche and MySQL then open MySQL workbench
- Add a new connection
- Click the connection made
## STEP 2:
- Create a DATABASE BY using  
 `CREATE DATABASE database_name`
- Use the database that has created by using  
  `USE database_name`
### Type the following data types attributes
![](image/Attributes.png)
- Creating Student Table  
`CREATE TABLE student_tbl(username VARCHAR(50)PRIMARY KEY NOT NULL UNIQUE);`
#### TABLE STRUCTURE
![](image/copy1.png)

- Creating Submission Table  
` username VARCHAR(50), FOREIGN KEY (username) REFERENCES student_tbl(username), shortname VARCHAR(50), FOREIGN KEY(shortname) REFERENCES assignment_tbl(shortname) ON DELETE CASCADE
ON UPDATE CASCADE, version INT NOT NULL, submit_date DATE NOT NULL, data TEXT, PRIMARY KEY(username, shortname, version));`
#### TABLE STRUCTURE
![](image/copy%202.png)

- Creating Assignment Table  
`CREATE TABLE assignment_tbl (shortname  VARCHAR(50) NOT NULL PRIMARY KEY , due_date DATE NOT NULL, url VARCHAR(255) UNIQUE);`
#### TABLE STRUCTURE
![](image/copy%203.png)

### HERE IS THE ER Diagram OR Relational schema
![](image/erd%20model1.png)


#### HERE IS THE MYSQL FILE
[Student Table](file/assignment_submission_db_student_tbl.sql)  
[Submission Table](file/assignment_submission_db_submission_tbl.sql)  
[Assignment Table](file/assignment_submission_db_assignment_tbl.sql)  
