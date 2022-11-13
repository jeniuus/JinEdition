-- [1]. 회원정보 테이블 생성
create table mem (
	memId varchar(50) primary key, 
	memPw varchar(50),
	memName varchar(50),
	memEmail varchar(60),
	memDistin int default 0 -- 회원구분(관리자:1, 회원:0)
);

-- <회원정보 테이블 조회 Test>
select * from mem;
-- <회원정보 테이블 삭제 Test>
drop table mem cascade constraints;

-- <회원테이터 삽입 Test>
-- 관리자 
insert into mem (memId,memPw,memName,memEmail,memDistin)
 values ('admin','woo950828@','관리자','soo980201@naver.com',1);
-- 일반회원(1)
insert into mem (memId,memPw,memName,memEmail)
 values ('soo1256','woo950828@','진현수','soo125696@gmail.com');
-- 일반회원(2) 
insert into mem (memId,memPw,memName,memEmail)
 values ('mavely','woo950828@','마동석','dsm777@naver.com');
 
 -- <회원데이터 삭제 Test>
delete from mem where memId='soo1256';

 --------------------------------------------------------
 
 -- [2]. 요트 테이블 생성
create table yacht (
 	yachtPk int primary key, --고유번호(pk)
 	yachtName varchar(100) not null,--요트이름
 	yachtPic varchar(200), --요트 사진
 	price varchar(100), -- 가격	
 	
 	location varchar(40), --위치
 	year int, -- 제작 연도
 	length varchar(40), -- 길이
 	beam varchar(40), -- 요트 너비
 	
 	draft varchar(40), -- 수면에서 배의 바닥까지 길이
 	berths int default 0, --선실(선원 용)
 	cabins int default 0, -- 객실(손님 용)
 	boatType varchar(50) --배 종류
);
-- 요트 테이블 조회 Test
select * from yacht;
-- 요트 테이블 삭제 Test
drop table yacht cascade constraints; 

-- 요트 데이터 직접 삽입
-- (1) Delta Gregory C Marshall 63m NFT
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 								--year	 length		      beam			 draft			
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Delta Gregory C Marshall 63m NFT','Delta Gregory C Marshall 63m NFT.png','116,846,797,170','United States',2024, '207 ft (63 m)', '17 ft (5 m)', '41 ft (12 m)',0,7,'motor');

-- (2) Heesen 2017
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Heesen 2017','Heesen 2017.png','66,180,464,614','Sint Maarten',2017, '180 ft (55 m)', '32 ft (10 m)', '0',0,6,'motor');

-- (3) G 500 164 1 (50.00m) Dynamiq 2024
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'G 500 164 1 (50.00m) Dynamiq 2024','G 500 164 1 (50.00m) Dynamiq 2024.png','36,472,199,937','Italy',2024, '50 m (164 ft)', '9 m (30 ft)', '2 m (7 ft)',0,0,'motor'); 

-- (4) Navigator Sagittarius By Navigator
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Navigator Sagittarius By Navigator','Navigator.png','34,764,862,496','Egypt',2023, '170 ft (52 m)', '30 ft (9 m)', '2 m (7 ft)',0,6,'motor'); 
 
-- (5) Conrad C144S
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Conrad C144S','Conrad.png','34,146,702,727','Poland',2024, '145 ft (44 m)', '29 ft (9 m)', '8 ft (2 m)',0,5,'motor'); 
 
-- (6) GTT 165 165' (50.29m) Dynamiq 2024
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'GTT 165 165 (50.29m) Dynamiq 2024','GTT.png','33,142,387,941','Italy',2024, '164 ft (50 m)', '30 ft (9 m)', '7 ft (2 m)',0,0,'motor'); 
 
-- (7) Heesen 2012
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Heesen 2012','Heesen 2012.png','32,902,459,148','United States',2024, '154 ft (47 m)', '29 ft (9 m)', '9 ft (3 m)',0,6,'motor'); 
 
-- (8) Royal Falcon Fleet Studio FA Porsche Catamaran  
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Royal Falcon FA Porsche Catamaran','Royal Falcon.png','31,468,529,964','Italy',2019, '135 ft (41 m)', '41 ft (12 m)', '6 ft (2 m)',0,5,'motor'); 

-- (9) Custom Legacy Superyacht
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Custom Legacy Superyacht','Custom Legacy.png','22,218,471,941','South Korea',2022, '135 ft (41 m)', '25 ft (8 m)', '7 ft (2 m)',0,5,'catamaran'); 
  
-- (10) Numarine 45XP Hull #1
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Numarine 37XP Hull #6','Numarine.png','18,773,025,747','Turkey',2024, '121 ft (37 m)', '28 ft (9 m)', '9 ft (3 m)',0,6,'motor'); 

-- (11) Richmond Yachts Tri-Deck Motor Yacht
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Richmond Yachts Tri-Deck Yacht','Richmond.png','18,624,033,480','United States',2013, '150 ft (46 m)', '28 ft (9 m)', '7 ft (2 m)',2,5,'mega_yacht'); 
 
-- (12) Silver Yachts SilverCat 36M
insert into yacht (yachtPk,yachtName,yachtPic,price,location,year,length,beam,draft,berths,cabins,boatType)									 							
 values ((select nvl(max(yachtPk),0)+1 from yacht),'Silver Yachts SilverCat 36M','Silver.png','16,738,579,768','United States',2013, '118 ft (36 m)', '45 ft (14 m)', '6 ft (2 m)',9,5,'catamaran'); 
 
delete from yacht where yachtPk=14; 
-------------------------------------------- 
-- 수정 Test
update yacht set draft='xxx' where yachtPk=2;
update yacht set yachtName='Royal Falcon FA Porsche Catamaran' where yachtPk=8;
delete from yacht where yachtPk=1; 

-- 조회 Test
select * from yacht;
select * from yacht where location like '%'||'t'||'%' order by yachtPk desc;

-- 삭제 Test
drop table yacht cascade constraints; 
 
SELECT TO_CHAR(125151534, 'fm999,999,999,999') AS RESULT FROM DUAL; 
--------------------------------------------------------
 
  -- [3]. 판매자 테이블 생성 (아직 구현x)
create table seller (
	sellerPk int primary key,
    storeName varchar(100) not null, --판매처 이름
    storeAddress varchar(200), --판매처 주소
    sellerName varchar(100), --판매자 이름
    sellerPhone varchar(100), --판매자 연락처
    sellerEmail varchar(100) --판매자 이메일
);

insert into seller (sellerPk, storeName, storeAddress, sellerName, sellerPhone, sellerEmail)
 values ();

select * from seller;
drop table seller cascade constraints; 
-------------------------------------------------------

-- [4]. 댓글 테이블 생성 (아직 구현x)
create table reply (
	rPk int primary key, -- 댓글 고유번호
	
	memId varchar(50),
	constraint memFk foreign key (memId) references mem (memId) on delete cascade,
	
	yachtPk int,
	constraint yachtFk foreign key (yachtPk) references yacht (yachtPk) on delete cascade,
	
	memName varchar(20) not null, -- 작성자이름
	
	rDate date DEFAULT SYSDATE, -- 작성일자
	rContent varchar(500) not null -- 댓글 내용
);

insert into reply (rPk, memId, yachtPk, memName,rContent)
 values ((select nvl(max(rPk),3000)+1 from reply),'soo1256',1,'진현수','정말 고급지네요!');
 
insert into reply (rPk, memId, yachtPk, memName,rContent)
 values ((select nvl(max(rPk),3000)+1 from reply),'mavely',1,'진현수','가격이 미쳤네요?');
 
delete from reply where rPk=3001;  
 
drop table reply cascade constraints; 

select * from reply;

select * from user_tables;
--------------------------------------------------------

-- [5]. 찜(요트)목록 테이블 생성
create table saved (
	savedPk int primary key, -- 찜목록에 있는 요트의 고유번호	
	memId varchar(50), -- (회원ID)
	constraint memId_Fk foreign key (memId) references mem (memId) on delete cascade,	
	yachtPk int, -- (요트 고유번호)
	constraint yachtPk_Fk foreign key (yachtPk) references yacht (yachtPk) on delete cascade
); 

--  요트번호1 요트를 soo1256회원이 찜!
insert into saved (savedPk,memId,yachtPk)
 values ((select nvl(max(savedPk),4000)+1 from saved),'soo1256',1);
--  요트번호2 요트를 soo1256회원이 찜! 
insert into saved (savedPk,memId,yachtPk)
 values ((select nvl(max(savedPk),4000)+1 from saved),'soo1256',2);
-- 요트번호1 요트를 mavely회원이 찜!
insert into saved (savedPk,memId,yachtPk)
 values ((select nvl(max(savedPk),4000)+1 from saved),'mavely',1); 
 
-- 아래 3개의 테이블을 참조해서 서로 join
-- mem,yacht,saved테이블로부터 검색 / 요트의 번호와 찜목록의 요트의 번호가 같고,회원아이디와 찜한 회원아이디가 같을 때  	
select s.savedPk, m.memId, y.yachtPk, y.yachtPic, y.yachtName, y.price, y.location
 from mem m, yacht y, saved s
  where m.memId=s.memId and s.yachtPk=y.yachtPk and s.memId='mavely' order by savedPk;

--중복체크
select * from saved  where memId='soo1256' and yachtPk=1;

select * from saved;
delete saved where memId='soo1256';

drop table saved cascade constraints;

-- Id가 soo1256인 회원의 찜목록 조회
select * from saved where memId='soo1256' order by savedPk desc;
select * from saved where memId='admin' order by savedPk desc;

