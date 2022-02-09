1. ȸ�������� ������ ������ �� �ִ� 'web_member'���̺��� ����ÿ�.
   �÷��� : m_email / m_pw / m_tel / m_address

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

insert into web_message values(num_seq.nextval,'test','smhrd@smhrd.or.kr','�׽�Ʈ����', sysdate)

select * from web_message

drop sequence num_seq
drop table web_message cascade constraints

delete from web_message where m_content='aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
delete from web_message where m_receiveEmail='a@a.a'

create table member(
	member_id varchar(20) not null,
	member_pw varchar(15) not null,
	member_nick varchar(15) not null unique,
	member_name varchar(30) not null,
	constraint m_m_id_pk primary key(member_id))

insert into member values('jms', 'alstj', 'Fatal', '�μ�')
select * from member

create table book_part1(
book_part1 varchar2(10),
book_part1_cat varchar2(30),
constraint bk_bp1_pk primary key(book_part1)

)
select * from book

create table book_part2(
book_part2 varchar2(10),
book_part2_cat varchar2(40),
constraint bk_bp2_pk primary key(book_part2)

)

create table book_part3(
book_part3 varchar2(10),
book_part3_cat varchar2(40),
constraint bk_bp3_pk primary key(book_part3)

)

create table book(
book_num number,
book_title varchar2(130) not null,
book_price number not null,
book_img clob not null,
book_author varchar2(100) not null,
book_publisher varchar2(50) not null,
book_description clob,
book_page number not null,
book_pubdate varchar2(20) not null,
book_isbn varchar2(30) not null,
book_part1 varchar2(10),
book_part2 varchar2(10),
book_part3 varchar2(10),
constraint bk_bn_pk primary key(book_num),
constraint bk_bp1_fk foreign key(book_part1)
references book_part1(book_part1),
constraint bk_bp2_fk foreign key(book_part2)
references book_part2(book_part2),
constraint bk_bp3_fk foreign key(book_part3)
references book_part3(book_part3)
)

drop table book_part3 cascade constraints;


insert into book_part1 values('P101','��ǻ�Ͱ���')
insert into book_part1 values('P102','IT�Ϲ�')
insert into book_part1 values('P103','��ǻ���Թ�/Ȱ��')
insert into book_part1 values('P104','�������/�ؼ�')
insert into book_part1 values('P105','OS')
insert into book_part1 values('P106','��Ʈ��ũ')
insert into book_part1 values('P107','����/��ŷ')
insert into book_part1 values('P108','�����ͺ��̽�')
insert into book_part1 values('P109','����')
insert into book_part1 values('P110','�� ���α׷���')
insert into book_part1 values('P111','���α׷��� ���')
insert into book_part1 values('P112','����� ���α׷���')
insert into book_part1 values('P113','OA/�繫�ڵ�ȭ')
insert into book_part1 values('P114','������Ʈ')
insert into book_part1 values('P115','�ڰ���/���輭')






insert into book_part2 values('P201','��ǻ�Ͱ���/���а���')
insert into book_part2 values('P202','����Ʈ�������')
insert into book_part2 values('P203','����ũ�����μ���')
insert into book_part2 values('P204','�ڷᱸ��/�˰���')
insert into book_part2 values('P205','�ΰ�����')
insert into book_part2 values('P206','IT�Ϲݼ�')
insert into book_part2 values('P207','��ǻ���Թ�/Ȱ��')
insert into book_part2 values('P208','���ͳ��Թ�/Ȱ��')
insert into book_part2 values('P209','��ǻ�ͱ���')
insert into book_part2 values('P210','�������/��ġ�ؼ�')
insert into book_part2 values('P211','�������/������')
insert into book_part2 values('P212','widows')
insert into book_part2 values('P213','macos')
insert into book_part2 values('P214','�Ӻ����')
insert into book_part2 values('P215','arm')
insert into book_part2 values('P216','���н�')
insert into book_part2 values('P217','������')
insert into book_part2 values('P218','��Ʈ��ũ �Ϲ�')
insert into book_part2 values('P219','tcp/ip')
insert into book_part2 values('P220','�����ͺ��̽� �Ϲ�')
insert into book_part2 values('P221','oracle')
insert into book_part2 values('P222','sql')
insert into book_part2 values('P223','���ӱ�ȹ')
insert into book_part2 values('P224','����ϰ���')
insert into book_part2 values('P225','���Ӱ���')
insert into book_part2 values('P226','�����α׷��� �Ϲ�')
insert into book_part2 values('P227','html/css')
insert into book_part2 values('P228','javascript')
insert into book_part2 values('P229','jquery')
insert into book_part2 values('P230','xml')
insert into book_part2 values('P231','asp')
insert into book_part2 values('P232','jsp')
insert into book_part2 values('P233','php')
insert into book_part2 values('P234','ajax')
insert into book_part2 values('P235','flex')
insert into book_part2 values('P236','���α׷��� �Ϲ�')
insert into book_part2 values('P237','���̽�')
insert into book_part2 values('P238','c')
insert into book_part2 values('P239','c++')
insert into book_part2 values('P240','C#')
insert into book_part2 values('P241','visualbasic')
insert into book_part2 values('P242','java')
insert into book_part2 values('P243','.net')
insert into book_part2 values('P244','����� ���α׷��� �Ϲ�')
insert into book_part2 values('P245','������/�����е�')
insert into book_part2 values('P246','�ȵ���̵�')
insert into book_part2 values('P247','����ϰ���')
insert into book_part2 values('P248','����')
insert into book_part2 values('P249','�Ŀ�����Ʈ')
insert into book_part2 values('P250','������Ʈ ��ȹ')
insert into book_part2 values('P251','��������')
insert into book_part2 values('P252','������')
insert into book_part2 values('P253','ux/ui')
insert into book_part2 values('P254','Ʈ����/���̽���')
insert into book_part2 values('P255','��α�/Ȩ������')
insert into book_part2 values('P256','���θ�/���ڻ�ŷ�')
insert into book_part2 values('P257','�����۵���')
insert into book_part2 values('P258','�繫�ڵ�ȭ')
insert into book_part2 values('P259','���� ��Ʈ��ũ ����')
insert into book_part2 values('P261','�׷���/������')
insert into book_part2 values('P262','��Ÿ�ڰ���')




insert into book_part3 values('P301','�ΰ����� �Ϲ�')
insert into book_part3 values('P302','������/�ӽŷ���')
insert into book_part3 values('P303','��Ʈ��ũ �Ϲ�')
insert into book_part3 values('P304','Server')
insert into book_part3 values('P305','��������')
insert into book_part3 values('P306','����Ƽ')
insert into book_part3 values('P307','�θ���')
insert into book_part3 values('P308','���Ӱ��� �Ϲ�')
insert into book_part3 values('P309','.NET �Ϲ�')
insert into book_part3 values('P310','VisualC++.NET/VisualC#.NET')
insert into book_part3 values('P311','ASP.NET')
insert into book_part3 values('P312','�������μ���')
insert into book_part3 values('P313','��ǻ��Ȱ��ɷ�')
insert into book_part3 values('P314','�繫�ڵ�ȭ ������')
insert into book_part3 values('P315','ITQ')
insert into book_part3 values('P316','DIAT')
insert into book_part3 values('P317','MOS')
insert into book_part3 values('P318','����ó�����')
insert into book_part3 values('P319','�������ȱ��')
insert into book_part3 values('P320','������� ����ɻ�')
insert into book_part3 values('P323','��ǻ�ͱ׷��Ƚ� ����ɻ�')
insert into book_part3 values('P324','GTQ/�������� ��ɻ�')
insert into book_part3 values('P325','���ڻ�ŷ� ������')
insert into book_part3 values('P326','e-test')
insert into book_part3 values('P327','�ڵ�')
insert into book_part3 values('P328','��ǻ���ڰ��� �Ϲ�')




drop table STUDY_video cascade constraints;


create table study_video(
video_num number,
video_title varchar2(1000)not null,
video_upload varchar2(20) not null,
video_thumbnail clob not null,
video_url clob not null,
video_channel varchar2(100) not null,
video_hits number not null,
video_time varchar2(20) not null,
book_part1 varchar2(10) not null,
book_part2 varchar2(10),
book_part3 varchar2(10),
constraint sv_vn_pk primary key(video_num),
constraint sv_bp1_fk foreign key(book_part1)
references book_part1(book_part1),
constraint sv_bp2_fk foreign key(book_part2)
references book_part2(book_part2),
constraint sv_bp3_fk foreign key(book_part3)
references book_part3(book_part3)
)
select * from member_type

create table member_type(
member_nick varchar(15) not null unique,
user_type1 varchar2(20),
user_type2 varchar2(20),
user_type3 varchar2(20),
constraint mt_mn_fk foreign key(member_nick)
references member(member_nick)
on delete cascade
)

select * from book

insert into member_type values('�ٺ�','P101','P202','')

drop table member_type cascade constraints;

