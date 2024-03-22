# DB-MedAppointHub
**This repository contains the sql file which are used in the MedAppointHub repo.**

## Installations of the Project:
- Make sure MySQL Workbench, MySQL Server and MySQL Shell are installed on your computer!

**1. Create a Local Server:**
- Open MySQL Workbench
- Set up a new connection: In MySQL Workbench, click on the "+" icon next to "MySQL Connections" to set up a new connection. Enter the necessary connection details such as connection name, hostname ("localhost"), port ("3306"), username ("root"), and the password you set during MySQL installation.

**2. Clone the Database Repository:**
- Clone the database repository locally. Run this command (Terminal on Mac or Git Bash on Windows:If you don’t already have Git Bash, you’ll have to download it to complete this process.):
```
git clone https://github.com/nurmahsereci/DB-MedAppointHub.git
```
**3. Create Database Schema:**
- Import the provided SQL script named as 'project_database' into your MySQL Workbench by following path: Server -> Data Import -> Import From Self-Contained File (Browse the project_database.sql file where you downloaded) -> Start Import.
- Run the statements inside the sql file. 

<details> 
<summary> Notes:</summary>
    
* There is relatively little data in the database, so a large amount of data can be imported.
* DoctorAvailability table includes the dates until end of the May 2024, so in order for the website to work after May, the DoctorAvailability table in the database must be updated.
</details>

