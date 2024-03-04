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



SELECT * FROM TBL_MEMBER WHERE userid = 'amdin';

-- 테이블에 컬럼 추가
ALTER TABLE TBL_MEMBER  ADD (
	zipcode		varchar2(100),
	addr		varchar2(300),
	addrdetail	varchar2(1000),
	addrdetc	varchar2(500)
);

SELECT * FROM TBL_MEMBER ;


CREATE TABLE test (
	 intdata number(10),
	 strdata varchar2(300)
);

SELECT * FROM TEST;
INSERT INTO test VALUES (99,'admin');


CREATE TABLE "USER"(
	userid varchar2(300) PRIMARY KEY,
	userpw varchar2(300),
	username varchar2(300),
	userphone varchar2(300),
	useraddr	varchar2(1000)
);
SELECT * FROM "USER";




----------------------------------
-- board table 생성
CREATE TABLE tbl_board (
	boardnum number(10) PRIMARY KEY,
	boardtitle varchar2(300),
	boardcontents varchar2(4000),
	username varchar2(300),
	boarddate DATE,
	boardreadcount number(10)
);
SELECT * FROM TBL_BOARD ORDER BY BOARDNUM desc;

CREATE SEQUENCE board_seq
START WITH 1
INCREMENT BY 1;
DROP SEQUENCE board_seq;
INSERT INTO tbl_board VALUES (board_seq.nextval, '첫 번째 글', '첫 번째 내용', 'admin', sysdate, 0	);
INSERT INTO tbl_board VALUES (board_seq.nextval, '두 번째 글', '두 번째 내용', 'admin', sysdate, 0	);
INSERT INTO tbl_board VALUES (board_seq.nextval, '세 번째 글', '세 번째 내용', 'admin', sysdate, 0	);
INSERT INTO tbl_board VALUES (board_seq.nextval, '게시글 등록', '임현민', '임현민', sysdate, 0	);

DELETE FROM TBL_BOARD ;

SELECT count(*) FROM TBL_BOARD ;
-- 페이징 처리
SELECT b.* FROM
	(SELECT rownum rn, a.* FROM
	-- 서브 쿼리를 사용시 alias 가 반드시 있어야함
	(SELECT * FROM TBL_BOARD ORDER BY BOARDNUM desc) a) b
WHERE b.rn BETWEEN 1 AND 10;








