GRANT ALL ON *.* TO maxuser@'%' IDENTIFIED BY 'maxpwd';
-- GRANT SELECT, SHOW DATABASES ON *.* TO 'maxadmin'@'%' IDENTIFIED BY 'maxpwd';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%' IDENTIFIED BY 'replpwd';
