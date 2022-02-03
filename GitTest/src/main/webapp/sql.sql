1. 회원가입한 정보를 저장할 수 있는 'web_member'테이블을 만드시오.
   컬럼명 : m_email / m_pw / m_tel / m_address

create table web_member(m_email varchar(50), m_pw varchar(50) not null, m_tel varchar(50) not null, m_address varchar(50) not null, constraint w_m_m_email_pk primary key(m_email))

drop table web_member cascade constraints;


select * from web_member


create table web_message(
	m_num number,
	m_sendname varchar(50) not null,
	m_receiveemail varchar(50) not null,
	m_content varchar(200) not null,
	m_senddate date not null,
	constraint w_m_m_number_pk primary key(m_num))
	
create sequence num_seq increment by 1 start with 1
alter sequence num_seq nocache

insert into web_message values(num_seq.nextval,'test','smhrd@smhrd.or.kr','테스트내용', sysdate)

select * from web_message

drop sequence num_seq
drop table web_message cascade constraints

delete from web_message where m_content='aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
delete from web_message where m_receiveEmail='a@a.a'








