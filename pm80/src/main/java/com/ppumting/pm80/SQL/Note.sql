SHOW TABLES;

CREATE TABLE `senduser` (
  `msg` VARCHAR(200) NOT NULL,
  `sendDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg`));

CREATE TABLE `reciveuser` (
  `ring` BIGINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ring`));  
  
SELECT * FROM senduser;
SELECT * FROM reciveuser;