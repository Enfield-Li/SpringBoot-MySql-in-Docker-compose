-- create databases
CREATE DATABASE IF NOT EXISTS `spring_test`;

-- create root user and grant rights
GRANT ALL ON `spring_test`.* TO 'root'@'%';