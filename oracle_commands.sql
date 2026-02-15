-- =============================================
-- Oracle PDB Assignment II
-- Student: Kabucye Kelly
-- Student ID: 27113
-- Course: INSY 8311
-- =============================================

-- ==============================
-- TASK 1: CREATE MAIN PDB
-- ==============================

-- Connect as SYSDBA
sqlplus / as sysdba;

-- Create Pluggable Database
CREATE PLUGGABLE DATABASE ke_pdb_27113
ADMIN USER pdbadmin IDENTIFIED BY 1234;

-- Open PDB
ALTER PLUGGABLE DATABASE ke_pdb_27113 OPEN;

-- Verify PDB state
SHOW PDBS;

-- Switch session to PDB
ALTER SESSION SET CONTAINER = ke_pdb_27113;

-- Verify container
SHOW CON_NAME;

-- Create assignment user inside PDB
CREATE USER kelly_plsqlauca_27113 IDENTIFIED BY 1234;

-- Grant privileges
GRANT CONNECT, RESOURCE TO kelly_plsqlauca_27113;

-- Verify user exists
SELECT username FROM dba_users
WHERE username = 'KELLY_PLSQLAUCA_27113';


-- ==============================
-- TASK 2: CREATE & DELETE TEMP PDB
-- ==============================

-- Switch back to root container
ALTER SESSION SET CONTAINER = CDB$ROOT;

-- Create temporary PDB
CREATE PLUGGABLE DATABASE ke_to_delete_pdb_27113
ADMIN USER tempadmin IDENTIFIED BY 1234;

-- Verify temp PDB exists
SHOW PDBS;

-- Close temp PDB
ALTER PLUGGABLE DATABASE ke_to_delete_pdb_27113 CLOSE IMMEDIATE;

-- Drop temp PDB including datafiles
DROP PLUGGABLE DATABASE ke_to_delete_pdb_27113 INCLUDING DATAFILES;

-- Confirm deletion
SHOW PDBS;

-- =============================================
-- END OF ASSIGNMENT COMMANDS
-- =============================================

