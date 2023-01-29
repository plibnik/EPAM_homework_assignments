## Table of contents
* [Task 1](#task1)
* [Task 2](#technologies)
* [Task 3](#setup)

The tasks are illustrated with screenshots in folders Part1, Part2, Part3.

## Task 1

(DONE) 1. Download MySQL server for your OS on VM.

(DONE) 2. Install MySQL server on VM.

(DONE) 3. Select a subject area and describe the database schema, (minimum 3 tables) 

(DONE) 4. Create a database on the server through the console. 

(DONE) 5. Fill in tables. 

(DONE) 6. Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY. 
* Without GROUP BY/ORDER BY clauses.

(DONE) 7. Execute other different SQL queries DDL, DML, DCL. 

(DONE) 8. Create a database of new users with different privileges. Connect to the database as a new user and verify that the privileges allow or deny certain actions. 

(DONE) 9. Make a selection from the main table DB MySQL.
	
## Task 2
(DONE) 10.Make backup of your database.

(DONE) 11.Delete the table and/or part of the data in the table. 

(DONE) 12.Restore your database. 

(DONE) 13.Transfer your local database to RDS AWS. 
* Done via EC2 host, SFTP/SCP transfer of local mysqldump file to EC2 host using PEM key, and then with mysql < dump.sql -h *RDS_host_name* inside my VPC

(DONE) 14.Connect to your database.

(DONE) 15.Execute SELECT operator similar step 6.

(DONE) 16.Create the dump of your database.

	
## Task 3
(NOT DONE) 17. Create a database. Use the use command to connect to a new database (If it doesn't exist, Mongo will create it when you write to it). 

(NOT DONE) 18. Create a collection. Use db.createCollection to create a collection. I'll leave the subject up to you. Run show dbs and show collections to view your database and collections.

(NOT DONE) 19. Create some documents. Insert a couple of documents into your collection. I'll leave the subject matter up to you, perhaps cars or hats.

(NOT DONE) 20. Use find() to list documents out.

Server failed to start after successful install on Ubuntu 22.04.1 LTS. "Illegal instruction, core dumped". Same behavior on bare metal and in Oracle VirtualBox.
But I've done very similar actions in December 2022 at https://learn.mongodb.com/learning-paths/introduction-to-mongodb , when studying the following units.
- Connecting to a MongoDB Database
- MongoDB CRUD Operations: Insert and Find Documents
- MongoDB CRUD Operations: Replace and Delete Documents

I'll deal with non-starting MongoDB Community binary after the homework deadline, if the mentors approve.
