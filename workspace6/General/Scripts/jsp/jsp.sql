-- 테이블 만들기
CREATE TABLE car (
	carnum varchar2(20) PRIMARY KEY,
	brand varchar2(200),
	color varchar2(200),
	price number(10)
);
-- 만들어진 테이블 확인
SELECT * FROM car;
-- 테이블에 데이터 넣기
INSERT INTO car VALUES ('1','Benz','black',350000000);
INSERT INTO car VALUES ('2','Benz','White',350000000);
-- sysdate 날짜
-- dual 더미테이블
SELECT sysdate FROM dual;

SELECT * FROM car;

SELECT * FROM CAR c WHERE CARNUM = '3';

CREATE TABLE MEMBER (
   name varchar2(20),
   age number(3)
);

SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES ('김자바', 22);
INSERT INTO MEMBER VALUES ('홍길동', 200);
INSERT INTO MEMBER VALUES ('이순신', 460);

SELECT * FROM MEMBER;

SELECT * FROM MEMBER WHERE name = '홍길동';

CREATE TABLE tbl_member (
	userid varchar2(200) PRIMARY KEY,
	userpw varchar2(200),
	username varchar2(200),
	usergender varchar2(100),
	userphone varchar2(100)
);

SELECT * FROM TBL_MEMBER ;
INSERT INTO TBL_MEMBER VALUES ('admin','admin1234','관리자','M','01023456789');

SELECT * FROM TBL_MEMBER 
WHERE userid = 'admin' AND userpw='admin1234';
SELECT * FROM TBL_MEMBER WHERE userid='admin';



SELECT * FROM TBL_MEMBER 
WHERE userid = 'amdin';




























