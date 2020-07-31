-- ���̺� ���� ����
create table users(
userNum_pk number(20) not null,
userName varchar2(30),
userId varchar2(30),
userPw varchar2(30),
userEmail varchar2(50),
userPhone varchar2(30),
userAddr varchar2(30),
PRIMARY KEY(userId)
);

create table orderList(
orderCode_pk number(20) not null,
userName varchar2(30),
userId varchar2(30),
userEmail varchar2(50),
userPhone varchar2(30),
userAddr varchar2(30),
PRIMARY KEY(orderCode_pk)
);

create table orderDetail(
orderCode_fk number(20) not null,
price number(20),
productName varchar2(20),
category varchar2(20),
userName varchar2(30),
userId varchar2(30),
FOREIGN KEY (orderCode_fk) REFERENCES orderList(orderCode_pk)
on delete cascade
);

create table review(
userNum     VARCHAR2(20),
userName    varchar2(30),
Bcontent     varchar2(500),
Bday         date  
);

create table board(
userName    varchar2(20),
title   varchar2(100),
content varchar2(1500)
);

-- ������ ����
create sequence seq_users_code
increment by 1
start with 1001;

create sequence seq_order_code
increment by 1
start with 1001;

-- ���̺� ���� ����
ALTER TABLE ORDERDETAIL
DROP COLUMN USERNAME;

ALTER TABLE ORDERDETAIL
DROP COLUMN USERID;

alter table orderDetail add userName varchar2(30);
alter table orderDetail add userId varchar2(30);

ALTER TABLE orderdetail
RENAME COLUMN category TO ocategory;

alter table boards rename to review;

-- ���̺� Ȯ��
select * from review;
select *from orderList;
select *from orderDetail;
select * from board;

-- commit
commit;

