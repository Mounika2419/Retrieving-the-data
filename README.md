# Student Database SQL Program

## 📌 Description

This SQL program demonstrates basic **MySQL database operations** using a `student` table. It covers database creation/selection, table creation, altering tables, inserting records, updating data, retrieving data, sorting, limiting results, and dropping tables.

## 🛠️ SQL Commands Explained

### 1. Display Databases

```sql
SHOW DATABASES;
```

Displays all databases available in the MySQL server.

---

### 2. Select the Database

```sql
USE AIDS;
```

Selects the `AIDS` database so that subsequent commands are executed inside it.

---

### 3. Create Student Table

```sql
CREATE TABLE student(
    sid INT,
    sname VARCHAR(20),
    sdept VARCHAR(20)
);
```

Creates a table named `student` with three columns:

| Column  | Data Type   | Description        |
| ------- | ----------- | ------------------ |
| `sid`   | INT         | Student ID         |
| `sname` | VARCHAR(20) | Student name       |
| `sdept` | VARCHAR(20) | Student department |

---

### 4. Add a New Column

```sql
ALTER TABLE student ADD sage INT;
```

Adds a new column called `sage` to store the student's age.

---

### 5. Rename a Table

```sql
RENAME TABLE std TO student;
```

Renames the table `std` to `student`.

> **Note:** This command should only be used if a table named `std` exists. If the `student` table has already been created, this command is not required.

---

### 6. Insert Student Records

```sql
INSERT INTO student VALUES(101,"ram","aids",20);
INSERT INTO student VALUES(101,"raju","aiml",21);
INSERT INTO student VALUES(103,"ravi","cse",20);
INSERT INTO student VALUES(104,"meera","ece",21);
INSERT INTO student VALUES(105,"reena","eee",19);
```

Inserts student records into the `student` table.

The values represent:

```text
SID → Student ID
SNAME → Student Name
SDEPT → Department
SAGE → Age
```

Example:

```sql
INSERT INTO student VALUES(101,"ram","aids",20);
```

adds Ram, who belongs to the AIDS department and is 20 years old.

---

### 7. Display Table Structure

```sql
DESC student;
```

Displays the structure of the `student` table, including column names and data types.

---

### 8. Update Student ID

```sql
UPDATE student
SET sid=102
WHERE sname="raju";
```

Changes Raju's student ID from `101` to `102`.

---

### 9. Display All Records

```sql
SELECT * FROM student;
```

Displays all columns and all records from the `student` table.

---

### 10. Display Unique Departments

```sql
SELECT DISTINCT sdept FROM student;
```

Displays each department only once.

For example:

```text
aids
aiml
cse
ece
eee
```

`DISTINCT` removes duplicate values from the result.

---

### 11. Select Students Above 19 Years

```sql
SELECT * FROM student
WHERE sage > 19;
```

Displays students whose age is greater than 19.

---

### 12. Select a Specific Student

```sql
SELECT sname, sage
FROM student
WHERE sid=101;
```

Displays the name and age of the student whose ID is `101`.

---

### 13. Drop a Table

```sql
DROP TABLE std;
```

Permanently deletes the `std` table and its data.

> **Note:** The table `std` must exist. Otherwise, MySQL will show a table-not-found error.

---

### 14. Display Current Date and Time

```sql
SELECT NOW();
```

Displays the current date and time of the MySQL server.

Example:

```text
2026-09-30 09:30:00
```

---

### 15. Drop the College Table

```sql
DROP TABLE clg;
```

Deletes the `clg` table permanently.

> This command works only if the `clg` table exists.

---

### 16. Display Available Tables

```sql
SHOW TABLES;
```

Displays all tables available in the currently selected database.

---

### 17. Sort Students by ID in Descending Order

```sql
SELECT sname, sage
FROM student
ORDER BY sid DESC;
```

Displays student names and ages, sorted by student ID from **highest to lowest**.

`DESC` means descending order.

---

### 18. Sort All Records in Descending Order

```sql
SELECT * FROM student
ORDER BY sid DESC;
```

Displays all student records with the highest student ID first.

---

### 19. Sort All Records in Ascending Order

```sql
SELECT * FROM student
ORDER BY sid ASC;
```

Displays all student records with the lowest student ID first.

`ASC` means ascending order.

---

### 20. Display First Three Records

```sql
SELECT * FROM student
LIMIT 3;
```

Displays only the first three records from the result.

---

## 📚 SQL Concepts Covered

This program demonstrates:

* `SHOW DATABASES`
* `USE`
* `CREATE TABLE`
* `ALTER TABLE`
* `RENAME TABLE`
* `INSERT`
* `DESC`
* `UPDATE`
* `SELECT`
* `DISTINCT`
* `WHERE`
* `DROP TABLE`
* `NOW()`
* `SHOW TABLES`
* `ORDER BY`
* `ASC`
* `DESC`
* `LIMIT`

## 🎯 Objective

The objective of this program is to practice fundamental **SQL and MySQL database operations** for creating, modifying, inserting, updating, retrieving, sorting, and deleting data.

## ⚠️ Important Notes

1. The `student` table has **4 columns** after adding `sage`, so each `INSERT` statement must provide 4 values.
2. `RENAME TABLE std TO student;` should not be executed if `student` already exists.
3. `DROP TABLE` permanently removes a table and its data.
4. The second record initially has the same `sid` (`101`) as the first record. Since `sid` was not defined as a primary key, MySQL allows this duplicate.
5. Use single quotes for strings in standard SQL/MySQL style:

```sql
INSERT INTO student VALUES(101,'ram','aids',20);
```

## ✅ Conclusion

This SQL program provides a basic demonstration of working with a student database in MySQL. It helps understand how to create tables, insert and modify records, retrieve specific data, sort results, remove duplicate values, and manage database tables.
