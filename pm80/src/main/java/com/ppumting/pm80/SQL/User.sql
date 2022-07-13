CREATE TABLE Users (
	userNumber BIGINT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	ssn VARCHAR(7) NOT NULL,
	phone VARCHAR(13) NOT NULL,
	userId VARCHAR(16) NOT NULL,
	pw VARCHAR(20) NOT NULL,
	addr VARCHAR(25) NOT NULL,
	aid  BIGINT NOT NULL,
	ring BIGINT NOT NULL DEFAULT 0
)AUTO_INCREMENT = 1;

ALTER TABLE Users ADD CONSTRAINT User_aid_FK FOREIGN KEY (aid) REFERENCES Point(aid);

SELECT * FROM Users;

DROP TABLE User;

INSERT INTO Users (name, ssn, phone, userId, pw, addr, aid)
VALUES('이태영', '970312', '010-2881-2498', 'lty', '1234', 'daegu', '1');


--FK
--CONSTRAINT User_aid_FK FOREIGN KEY (aid) REFERENCES Point(aid),
--CONSTRAINT User_ring_FK FOREIGN KEY (ring) REFERENCES Note(ring)