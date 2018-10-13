select @@global.gtid_current_pos;
stop slave;
CHANGE MASTER ':3' TO MASTER_HOST='192.168.2.13',MASTER_PORT=3306,MASTER_USER='maxuser',MASTER_PASSWORD='maxpwd',MASTER_USE_GTID=Slave_pos;
start slave;
