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

'==================================절취선======================================================='

create문!!

create sequence seq_schedule_num
		increment by 1
		start with 1;
		

create sequence seq_editor_num
		increment by 1
		start with 1;
		
create sequence seq_diary_num
		increment by 1
		start with 1;
		
create sequence seq_todo_num
		increment by 1
		start with 1;
		
		
create sequence seq_achieve_num
		increment by 1
		start with 1;

create table member(
	member_id varchar(20) not null,
	member_pw varchar(15) not null,
	member_nick varchar(20) not null unique,
	member_name varchar(30) not null,
	constraint m_m_id_pk primary key(member_id))
	
create table book_part1(
	book_part1 varchar2(10),
	book_part1_cat varchar2(30),
	constraint bk_bp1_pk primary key(book_part1))
	
create table book_part2(
	book_part2 varchar2(10),
	book_part2_cat varchar2(40),
	constraint bk_bp2_pk primary key(book_part2))
	
create table book_part3(
	book_part3 varchar2(10),
	book_part3_cat varchar2(40),
	constraint bk_bp3_pk primary key(book_part3))
	
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
	references book_part3(book_part3))
	
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
	references book_part3(book_part3))
	
create table member_type(
	member_nick varchar(20) not null,
	user_type1 varchar2(20),
	user_type2 varchar2(20),
	user_type3 varchar2(20),
	constraint mt_mn_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade)
	
create table recommend_book(
	member_nick varchar(20) not null,
	user_type1 varchar(20),
	user_type2 varchar(20),
	user_type3 varchar(20),
	book_title varchar(130) not null,
	book_price number not null,
	book_img clob not null,
	book_author varchar2(100) not null,
	book_publisher varchar2(50) not null,
	book_description clob,
	book_page number not null,
	book_pubdate varchar2(20) not null,
	book_isbn varchar2(30) not null,
	contents_cnt number,
	book_num number,
	constraint rb_mn_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade
	)
	
create table recommend_video(
	member_nick varchar(20) not null,
	user_type1 varchar(20),
	user_type2 varchar(20),
	user_type3 varchar(20),
	video_title varchar(1000) not null,
	video_upload varchar(20) not null,
	video_thumbnail clob,
	video_url clob,
	video_channel varchar(50) not null,
	video_hits varchar(30) not null,
	video_time varchar(20) not null,
	video_num number,
	contents_cnt number,
	constraint rv_mn_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade
	)
	
create table schedule(
	seq_schedule_num number,
	schedule_name varchar2(1000),
	schedule_start varchar2(20),
	schedule_num_day varchar2(10),
	schedule_end varchar2(20),
	schedule_day_page number,
	schedule_date date,
	member_nick varchar(20) not null,
	book_num number,
	book_title varchar2(130),
	book_page number,
	constraint sc_sn_pk primary key(seq_schedule_num),
	constraint sc_mn_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade,
	constraint sc_bn_fk foreign key(book_num)
	references book(book_num)
)

create table editor(
	seq_editor_num number,
	editor_title varchar2(150),
	editor_content clob,
	editor_date date,
	seq_schedule_num number,
	seq_dayplan_num number,
	member_nick varchar(20),
	constraint ed_en_pk primary key(seq_editor_num),
	constraint ed_en_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade
)

create table diary(
	seq_diary_num number,
	diary_title varchar2(150),
	diary_content clob,
	diary_date date,
	seq_schedule_num number,
	seq_dayplan_num number,
	member_nick varchar(20),
	constraint di_dn_pk primary key(seq_diary_num),
	constraint di_mi_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade
)

create table todo(
	seq_todo_num number,
	todo_title varchar2(150),
	todo_date date,
	seq_schedule_num number,
	seq_dayplan_num number,
	member_nick varchar(20),
	todo_check number default 0,
	constraint td_dn_pk primary key(seq_todo_num),
	constraint td_mi_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade
)
select * from schedule
insert into todo values(seq_todo_num.nextval, 'test', sysdate,23,null,'asdf', default )
insert into todo values(seq_todo_num.nextval, 'test2', sysdate,23,null,'asdf', default )

create table achieve(
	seq_achieve_num number,
	achieve_study_day varchar2(10),
	achieve_study_page varchar2(10),
	seq_schedule_num number,
	member_nick varchar(20),
	book_page number,
	schedule_num_day varchar2(10),
	constraint ac_an_pk primary key(seq_achieve_num),
	constraint ac_mi_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade,
	constraint ac_sn_fk foreign key(seq_schedule_num)
	references schedule(seq_schedule_num)
	on delete cascade
)

create table dayplan(
	seq_dayplan_num number not null,
	dayplan_title varchar(150) not null,
	dayplan_date date not null,
	seq_schedule_num number,
	member_nick varchar(20) not null,
	book_title varchar(130),
	book_page number,
	schedule_num_day varchar(5),
	achieve_study_day varchar(5),
	achieve_study_page number,
	schedule_day_page number,
	dayplan_check number,
	constraint s_d_num_pk primary key(seq_dayplan_num),
	constraint m_nick_fk foreign key(member_nick)
	references member(member_nick)
	on delete cascade
)

create sequence seq_dayplan_num
		increment by 1
		start with 1;
	
insert문

insert into member_type values('jms', 'alstj', 'Fatal', '민서')

insert into book_part1 values('P101','컴퓨터공학')
insert into book_part1 values('P102','IT일반')
insert into book_part1 values('P103','컴퓨터입문/활용')
insert into book_part1 values('P104','전산통계/해석')
insert into book_part1 values('P105','OS')
insert into book_part1 values('P106','네트워크')
insert into book_part1 values('P107','보안/해킹')
insert into book_part1 values('P108','데이터베이스')
insert into book_part1 values('P109','게임')
insert into book_part1 values('P110','웹 프로그래밍')
insert into book_part1 values('P111','프로그래밍 언어')
insert into book_part1 values('P112','모바일 프로그래밍')
insert into book_part1 values('P113','OA/사무자동화')
insert into book_part1 values('P114','웹사이트')
insert into book_part1 values('P115','자격증/수험서')

insert into book_part2 values('P201','컴퓨터공학/과학개론')
insert into book_part2 values('P202','소프트웨어공학')
insert into book_part2 values('P203','마이크로프로세서')
insert into book_part2 values('P204','자료구조/알고리즘')
insert into book_part2 values('P205','인공지능')
insert into book_part2 values('P206','IT일반서')
insert into book_part2 values('P207','컴퓨터입문/활용')
insert into book_part2 values('P208','인터넷입문/활용')
insert into book_part2 values('P209','컴퓨터교육')
insert into book_part2 values('P210','전산통계/수치해석')
insert into book_part2 values('P211','전산통계/빅데이터')
insert into book_part2 values('P212','widows')
insert into book_part2 values('P213','macos')
insert into book_part2 values('P214','임베디드')
insert into book_part2 values('P215','arm')
insert into book_part2 values('P216','유닉스')
insert into book_part2 values('P217','리눅스')
insert into book_part2 values('P218','네트워크 일반')
insert into book_part2 values('P219','tcp/ip')
insert into book_part2 values('P220','데이터베이스 일반')
insert into book_part2 values('P221','oracle')
insert into book_part2 values('P222','sql')
insert into book_part2 values('P223','게임기획')
insert into book_part2 values('P224','모바일게임')
insert into book_part2 values('P225','게임개발')
insert into book_part2 values('P226','웹프로그래밍 일반')
insert into book_part2 values('P227','html/css')
insert into book_part2 values('P228','javascript')
insert into book_part2 values('P229','jquery')
insert into book_part2 values('P230','xml')
insert into book_part2 values('P231','asp')
insert into book_part2 values('P232','jsp')
insert into book_part2 values('P233','php')
insert into book_part2 values('P234','ajax')
insert into book_part2 values('P235','flex')
insert into book_part2 values('P236','프로그래밍 일반')
insert into book_part2 values('P237','파이썬')
insert into book_part2 values('P238','c')
insert into book_part2 values('P239','c++')
insert into book_part2 values('P240','C#')
insert into book_part2 values('P241','visualbasic')
insert into book_part2 values('P242','java')
insert into book_part2 values('P243','.net')
insert into book_part2 values('P244','모바일 프로그래밍 일반')
insert into book_part2 values('P245','아이폰/아이패드')
insert into book_part2 values('P246','안드로이드')
insert into book_part2 values('P247','모바일게임')
insert into book_part2 values('P248','엑셀')
insert into book_part2 values('P249','파워포인트')
insert into book_part2 values('P250','웹사이트 기획')
insert into book_part2 values('P251','웹디자인')
insert into book_part2 values('P252','웹서비스')
insert into book_part2 values('P253','ux/ui')
insert into book_part2 values('P254','트위터/페이스북')
insert into book_part2 values('P255','블로그/홈페이지')
insert into book_part2 values('P256','쇼핑몰/전자상거래')
insert into book_part2 values('P257','웹제작도구')
insert into book_part2 values('P258','사무자동화')
insert into book_part2 values('P259','정보 네트워크 보안')
insert into book_part2 values('P261','그래픽/디자인')
insert into book_part2 values('P262','기타자격증')

insert into book_part3 values('P301','인공지능 일반')
insert into book_part3 values('P302','딥러닝/머신러닝')
insert into book_part3 values('P303','네트워크 일반')
insert into book_part3 values('P304','Server')
insert into book_part3 values('P305','지리정보')
insert into book_part3 values('P306','유니티')
insert into book_part3 values('P307','인리얼')
insert into book_part3 values('P308','게임개발 일반')
insert into book_part3 values('P309','.NET 일반')
insert into book_part3 values('P310','VisualC++.NET/VisualC#.NET')
insert into book_part3 values('P311','ASP.NET')
insert into book_part3 values('P312','워드프로세서')
insert into book_part3 values('P313','컴퓨터활용능력')
insert into book_part3 values('P314','사무자동화 산업기사')
insert into book_part3 values('P315','ITQ')
insert into book_part3 values('P316','DIAT')
insert into book_part3 values('P317','MOS')
insert into book_part3 values('P318','정보처리기사')
insert into book_part3 values('P319','정보보안기사')
insert into book_part3 values('P320','정보기기 운용기능사')
insert into book_part3 values('P323','컴퓨터그래픽스 운용기능사')
insert into book_part3 values('P324','GTQ/웹디자인 기능사')
insert into book_part3 values('P325','전자상거래 관리사')
insert into book_part3 values('P326','e-test')
insert into book_part3 values('P327','코딩')
insert into book_part3 values('P328','컴퓨터자격증 일반')
insert into book_part3 values('0','선택안함')
insert into book_part2 values('0','선택안함')

insert into member_type values('바보','P101','P202','')

select문

select * from member
select * from member_type
select * from book
select * from member_type
select * from recommend_book
select * from book_part3
select * from study_video
select * from recommend_video
select * from book where book_part1='P102' and book_part2='P206' and book_part3='0'
select * from study_video where book_part1='P102' and book_part2='P206' and book_part3='0'
select * from book
select NVL(book_part2, '0') from book
select NVL(book_part3, '0') from book
select * from schedule
select * from editor
select * from diary
select * from todo
select * from dayplan
select * from achieve

select seq_dayplan_num from dayplan where to_char(dayplan_date,'yyyy/mm/dd')=to_char(sysdate, 'yyyy/mm/dd') and member_nick='z'
select seq_dayplan_num from dayplan where DAYPLAN_DATE LIKE '%22-02-17%'
select seq_dayplan_num from dayplan where member_nick='z' and to_char(dayplan_date,'yyyy/mm/dd')=to_char(sysdate, 'yyyy/mm/dd') and seq_schedule_num=0
select * from (select rownum as rn, seq_todo_num, todo_title,todo_date, seq_schedule_num, seq_dayplan_num, member_nick, todo_check from (select * from todo where member_nick = 'asdf' and seq_schedule_num = 23 order by seq_todo_num desc )) where rn between 1 and 5

select * from book where book_part1='P103'
select * from recommend_book where user_type1='P109'


drop문

drop table member_type cascade constraints;
drop table member cascade constraints;
drop table recommend_book cascade constraints;
drop table recommend_video cascade constraints;
drop table schedule cascade constraints;
drop table editor cascade constraints;
drop table diary cascade constraints;
drop table todo cascade constraints;
drop table dayplan cascade constraints;
drop sequence seq_schedule_num;
drop sequence seq_editor_num;
drop sequence seq_diary_num;
drop sequence seq_todo_num;
drop sequence seq_dayplan_num;


delete문

delete from member_type where member_nick='Fatal'

update문

update book set book_part2 = '0' where book_part2 is null
update book set book_part3 = '0' where book_part3 is null
update study_video set book_part2 = '0' where book_part2 is null
update study_video set book_part3 = '0' where book_part3 is null

alter문

alter sequence seq_schedule_num nocache
alter sequence seq_dayplan_num nocache
alter sequence seq_editor_num nocache
alter sequence seq_diary_num nocache
alter sequence seq_todo_num nocache

select * from (select rownum as rn, v_editor.* from 
(select * from editor where member_nick = 'f' and seq_schedule_num = 2 order by seq_editor_num desc ) v_editor) where rn between 1 and 5


select * from (select rownum rn, v_schedule.* from (select * from schedule where member_nick=? order by seq_schedule_num desc) v_schedule) where rn between ? and ?

select * from (select rownum as rn, seq_editor_num, editor_title, editor_content, 
editor_date, seq_schedule_num, seq_dayplan_num, member_nick from 
(select * from editor where member_nick = 'f' and seq_schedule_num = 2 order by seq_editor_num desc )) where rn between 1 and 5

select count(*) from editor where seq_schedule_num = 2
