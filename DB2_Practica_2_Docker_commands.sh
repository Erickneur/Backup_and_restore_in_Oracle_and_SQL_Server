###################
# Oracle Database #
###################

# Create new container
docker run -d -it --name db2-oracle-server -p 1521:1521 -p 8080:8080 store/oracle/database-enterprise:12.2.0.1

docker run -d -it --name oracle-database-server -p 1521:1521 -p 8080:8080 store/oracle/database-enterprise:12.2.0.1

# Start container
docker start db2-oracle-server

docker start oracle-database-server

# Access to terminal
docker exec -it db2-oracle-server bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
docker exec -it db2-oracle-server /bin/bash
docker exec -u 0 -it db2-oracle-server bash -c "source /home/oracle/.bashrc; sqlplus /nolog"

docker exec -it oracle-database-server /bin/bash
docker exec -it oracle-database-server bash -c "source /home/oracle/.bashrc; sqlplus /nolog"

# Connect to Oracle instance
# sqlplus sys/Oradoc_db1@ORCLCDB as sysdba
sqlplus
# Enter user
sys as sysdba
# Enter password
Oradoc_db1

# Exit from terminal 
exit

# Stop container
docker stop db2-oracle-server
docker stop oracle-database-server

# Remove container
docker container rm <id>

##############
# SQL Server #
##############

# Create new container
docker run --name sql-server -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=SuperStrongPassword' -p 1433:1433 -d mcr.microsoft.com/mssql/server

# Start container
docker start sql-server

# Access to terminal
docker exec -it sql-server /bin/bash

# Connect to SQL by command line
sudo docker exec -it sql-server /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'SuperStrongPassword' \
   -Q 'SELECT Name FROM sys.Databases'

# Exit from terminal 
exit

# Stop container
docker stop sql-server

# Create directory
docker exec -it sql-server mkdir /var/opt/mssql/backup

# Copy file to container
docker cp db2_practica_2.bak sql-server:/var/opt/mssql/backup

# Restore .bak file
docker exec -it sql-server /opt/mssql-tools/bin/sqlcmd -S localhost `
   -U SA -P "SuperStrongPassword" `
   -Q "RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/backup/db2_practica_2.bak'"

# Output
LogicalName   PhysicalName
------------------------------------------
WWI_Primary   D:\Data\WideWorldImporters.mdf
WWI_UserData   D:\Data\WideWorldImporters_UserData.ndf
WWI_Log   E:\Log\WideWorldImporters.ldf
WWI_InMemory_Data_1   D:\Data\WideWorldImporters_InMemory_Data_1

# Restore database
docker exec -it sql-server /opt/mssql-tools/bin/sqlcmd `
   -S localhost -U SA -P "SuperStrongPassword" `
   -Q "RESTORE DATABASE WideWorldImporters FROM DISK = '/var/opt/mssql/backup/db2_practica_2.bak' WITH MOVE 'WWI_Primary' TO '/var/opt/mssql/data/WideWorldImporters.mdf', MOVE 'WWI_UserData' TO '/var/opt/mssql/data/WideWorldImporters_userdata.ndf', MOVE 'WWI_Log' TO '/var/opt/mssql/data/WideWorldImporters.ldf', MOVE 'WWI_InMemory_Data_1' TO '/var/opt/mssql/data/WideWorldImporters_InMemory_Data_1'"