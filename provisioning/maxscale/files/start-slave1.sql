select @@global.gtid_current_pos;
stop slave;
reset slave;
SET @@global.gtid_slave_pos='0-1-4';
CHANGE MASTER TO MASTER_HOST='192.168.2.11',MASTER_PORT=3306,MASTER_USER='maxuser',MASTER_PASSWORD='maxpwd',MASTER_USE_GTID=Slave_pos;
start slave;
