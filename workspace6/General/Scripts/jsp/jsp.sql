CREATE TABLE car (
	carnum varchar2(20) PRIMARY KEY,
	brand varchar2(200),
	color varchar2(200),
	price number(10)
);
SELECT * FROM car;

INSERT INTO car VALUES ('1','Benz','black',350000000);
INSERT INTO car VALUES ('2','Benz','White',350000000);