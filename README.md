# Oracle Pluggable Database Assignment II

**Student Name:** Kabucye Kelly  
**Student ID:** 27113  
**Course:** Database Development with PL/SQL (INSY 8311)  
**Instructor:** Eric Maniraguha  
**Year:** 2026  

---

# Overview

This assignment demonstrates practical implementation of Oracle Multitenant Architecture using Oracle Database 21c.  
It covers creation and management of pluggable databases (PDBs), user administration within a PDB, temporary PDB lifecycle management, and monitoring using Oracle Enterprise Manager (OEM).

All tasks were executed locally using Oracle Database 21c on Windows.

---

# Oracle Environment

- Oracle Database: 21c Enterprise Edition  
- Container Database (CDB): ORCL  
- Default PDB: ORCLPDB  

---

# Task 1 — Main PDB Creation and User Setup

A pluggable database named **ke_pdb_27113** was successfully created following the required naming convention.  
The PDB was opened in READ WRITE mode and a dedicated user **kelly_plsqlauca_27113** was created inside the PDB.

Privileges were granted for coursework usage.

The process involved:
- Connecting as SYSDBA  
- Creating the pluggable database  
- Opening the PDB  
- Switching session to the PDB  
- Creating and granting privileges to the user  

## Evidence (Click to View)

- [PDB Created](screenshots/task1_01_pdb_created.png)  
- [PDB Open State](screenshots/task1_02_pdb_open_state.png)  
- [Switched to PDB](screenshots/task1_03_inside_pdb.png)  
- [User Created](screenshots/task1_04_user_created.png)  
- [User Verified](screenshots/task1_05_user_verified.png)  

---

# Task 2 — Temporary PDB Creation and Deletion

A temporary pluggable database **ke_to_delete_pdb_27113** was created to demonstrate lifecycle management.

The database was:
1. Created  
2. Verified in PDB list  
3. Dropped including datafiles  
4. Confirmed deleted  

This demonstrated full lifecycle management of pluggable databases.

## Evidence (Click to View)

- [Temp PDB Created](screenshots/task2_01_temp_pdb_created.png)  
- [Temp PDB Listed](screenshots/task2_02_temp_pdb_listed.png)  
- [Temp PDB Deleted](screenshots/task2_03_temp_pdb_deleted.png)  
- [Temp PDB Confirmed Deleted](screenshots/task2_04_temp_pdb_confirmed_deleted.png)  

---

# Task 3 — Oracle Enterprise Manager (OEM)

Oracle Enterprise Manager Database Express (OEM) was accessed through the browser to monitor the Oracle environment and confirm pluggable database operations.

OEM dashboard displayed the container database, pluggable databases and user inside the PDB.

OEM URL:  
https://localhost:5500/em  

## Evidence (Click to View)

- [OEM Dashboard Screenshot](screenshots/task3_01_oem_dashboard.png)

---

# Challenges Encountered and Solutions

**ORA-65096: invalid common user or role name**  
Cause: User created in root container  
Solution: Switched session to the PDB before creating user  

**ORA-65005: invalid file name pattern**  
Cause: Incorrect file path during PDB creation  
Solution: Set `db_create_file_dest` parameter and recreated PDB  

---

# SQL Commands File

All SQL commands used in this assignment are provided in a separate file:

oracle_commands.sql


# PDB Created
**ke_pdb_27113**

---

# Academic Integrity Statement

I confirm that this assignment was completed individually through my own practical work using Oracle Database 21c.  
All screenshots and SQL commands reflect my personal implementation and testing.
