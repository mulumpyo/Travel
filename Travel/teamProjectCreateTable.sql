


DROP SEQUENCE user_seq;
DROP SEQUENCE pro_seq;
DROP SEQUENCE res_seq;
DROP SEQUENCE qna_seq;
DROP SEQUENCE rev_seq;

DROP TABLE tbl_user;
DROP TABLE tbl_country;
DROP TABLE tbl_qna;
DROP TABLE tbl_product;
DROP TABLE tbl_review;
DROP TABLE tbl_reservation;
DROP TABLE tbl_wish;



-- 유저 테이블
CREATE SEQUENCE user_seq;

CREATE TABLE tbl_user (user_no NUMBER NOT NULL PRIMARY KEY
                   , user_id VARCHAR2(64) NOT NULL
                   , user_pw VARCHAR2(20) NOT NULL
                   , user_name VARCHAR2(50) NOT NULL
                   , user_birth DATE
                   , user_phone VARCHAR2(15)
                   , isadmin NUMBER default 0 NOT NULL );

INSERT INTO tbl_user VALUES (user_seq.nextval, 'user00', '1111', '김관리', TO_DATE('2002-01-02','YYYY-MM-DD'), '010-0000-1111', 1);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user01', '1111', '김대환', TO_DATE('1965-03-12','YYYY-MM-DD'), '010-0000-1001', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user02', '1111', '제갈은경', TO_DATE('1970-08-24','YYYY-MM-DD'), '010-0000-1002', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user03', '1111', '김유경', TO_DATE('1982-11-03','YYYY-MM-DD'), '010-0000-1003', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user04', '1111', '손이영', TO_DATE('1995-01-18','YYYY-MM-DD'), '010-0000-1004', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user05', '1111', '김해민', TO_DATE('2000-05-25','YYYY-MM-DD'), '010-0000-1005', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user06', '1111', '한지원', TO_DATE('1968-08-30','YYYY-MM-DD'), '010-0000-1006', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user07', '1111', '조민호', TO_DATE('1975-12-02','YYYY-MM-DD'), '010-0000-1007', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user08', '1111', '윤지우', TO_DATE('1988-09-14','YYYY-MM-DD'), '010-0000-1008', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user09', '1111', '서예린', TO_DATE('1991-07-08','YYYY-MM-DD'), '010-0000-1009', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user10', '1111', '남도현', TO_DATE('2003-03-29','YYYY-MM-DD'), '010-0000-1010', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user11', '1111', '오나연', TO_DATE('1963-10-21','YYYY-MM-DD'), '010-0000-1011', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user12', '1111', '백지훈', TO_DATE('1972-06-15','YYYY-MM-DD'), '010-0000-1012', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user13', '1111', '강유나', TO_DATE('1985-02-10','YYYY-MM-DD'), '010-0000-1013', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user14', '1111', '노지훈', TO_DATE('1993-11-05','YYYY-MM-DD'), '010-0000-1014', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user15', '1111', '문태양', TO_DATE('2001-04-01','YYYY-MM-DD'), '010-0000-1015', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user16', '1111', '유시현', TO_DATE('1969-08-11','YYYY-MM-DD'), '010-0000-1016', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user17', '1111', '심재윤', TO_DATE('1976-01-20','YYYY-MM-DD'), '010-0000-1017', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user18', '1111', '하소연', TO_DATE('1981-05-19','YYYY-MM-DD'), '010-0000-1018', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user19', '1111', '장동현', TO_DATE('1997-10-28','YYYY-MM-DD'), '010-0000-1019', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user20', '1111', '홍예지', TO_DATE('2004-02-13','YYYY-MM-DD'), '010-0000-1020', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user21', '1111', '고나리', TO_DATE('1966-06-06','YYYY-MM-DD'), '010-0000-1021', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user22', '1111', '배준호', TO_DATE('1979-09-30','YYYY-MM-DD'), '010-0000-1022', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user23', '1111', '송지은', TO_DATE('1987-12-22','YYYY-MM-DD'), '010-0000-1023', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user24', '1111', '임하늘', TO_DATE('1990-03-11','YYYY-MM-DD'), '010-0000-1024', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user25', '1111', '정태훈', TO_DATE('2002-06-17','YYYY-MM-DD'), '010-0000-1025', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user26', '1111', '추유정', TO_DATE('1962-11-29','YYYY-MM-DD'), '010-0000-1026', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user27', '1111', '강서연', TO_DATE('1974-04-04','YYYY-MM-DD'), '010-0000-1027', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user28', '1111', '전민석', TO_DATE('1989-08-09','YYYY-MM-DD'), '010-0000-1028', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user29', '1111', '양지수', TO_DATE('1994-12-07','YYYY-MM-DD'), '010-0000-1029', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user30', '1111', '권나연', TO_DATE('2005-01-23','YYYY-MM-DD'), '010-0000-1030', 0);

SELECT * FROM tbl_user;

-- 국가 테이블
CREATE TABLE tbl_country(country VARCHAR2(30) NOT NULL PRIMARY KEY
                     , continent VARCHAR2(20) NOT NULL);

--  Asia (code = 0)
INSERT INTO tbl_country VALUES ('일본', 0);
INSERT INTO tbl_country VALUES ('중국', 0);
INSERT INTO tbl_country VALUES ('태국', 0);
INSERT INTO tbl_country VALUES ('베트남', 0);
INSERT INTO tbl_country VALUES ('싱가포르', 0);

--  North America (code = 1)
INSERT INTO tbl_country VALUES ('미국', 1);
INSERT INTO tbl_country VALUES ('캐나다', 1);
INSERT INTO tbl_country VALUES ('멕시코', 1);

--  Africa (code = 2)
INSERT INTO tbl_country VALUES ('남아프리카공화국', 2);
INSERT INTO tbl_country VALUES ('이집트', 2);
INSERT INTO tbl_country VALUES ('모로코', 2);
INSERT INTO tbl_country VALUES ('케냐', 2);
INSERT INTO tbl_country VALUES ('탄자니아', 2);

--  South America (code = 3)
INSERT INTO tbl_country VALUES ('브라질', 3);
INSERT INTO tbl_country VALUES ('아르헨티나', 3);
INSERT INTO tbl_country VALUES ('페루', 3);
INSERT INTO tbl_country VALUES ('칠레', 3);
INSERT INTO tbl_country VALUES ('콜롬비아', 3);

--  Europe (code = 4)
INSERT INTO tbl_country VALUES ('프랑스', 4);
INSERT INTO tbl_country VALUES ('이탈리아', 4);
INSERT INTO tbl_country VALUES ('스페인', 4);
INSERT INTO tbl_country VALUES ('영국', 4);
INSERT INTO tbl_country VALUES ('스위스', 4);

--  Oceania (code = 5)
INSERT INTO tbl_country VALUES ('호주', 5);
INSERT INTO tbl_country VALUES ('뉴질랜드', 5);
INSERT INTO tbl_country VALUES ('피지', 5);

SELECT * FROM tbl_country;

-- 패키지 상품 테이블
CREATE SEQUENCE pro_seq;

CREATE TABLE tbl_product(p_code NUMBER NOT NULL PRIMARY KEY
                     , user_no NUMBER NOT NULL
                     , title VARCHAR2(100) NOT NULL
                     , description VARCHAR2(1000) NOT NULL
                     , theme VARCHAR2(100) NOT NULL
                     , country VARCHAR2(30) NOT NULL
                     , price NUMBER NOT NULL
                     , start_day DATE NOT NULL
                     , end_day DATE NOT NULL
                     , max_qty NUMBER NOT NULL
                     , status NUMBER DEFAULT 1 NOT NULL
                     , created_at DATE DEFAULT SYSDATE NOT NULL); 

        
                     

-- ?? 일본
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[일본] 전통 문화 탐방 6일', 
        '교토·나라·오사카 중심으로 일본의 전통문화와 건축, 사찰을 느끼는 풍성한 일정입니다.',
        '문화', '일본', 3200000,
        TO_DATE('2025-08-10','YYYY-MM-DD'), TO_DATE('2025-08-15','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[일본] 홋카이도 온천 힐링 5일', 
        '삿포로·노보리베츠 온천에서 느긋한 휴식과 자연 속 힐링을 즐기는 완벽한 코스입니다.',
        '힐링', '일본', 3400000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-05','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[일본] 도쿄·후지산 탐험 7일', 
        '도쿄의 도심과 후지산 등반, 시즈오카 녹차밭까지 만나는 액티브 여행입니다.',
        '탐험', '일본', 3600000,
        TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2025-09-16','YYYY-MM-DD'),
        12, 1);

-- ?? 중국
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[중국] 북경 황궁＆만리장성 6일', 
        '자금성 중심의 문화탐방과 만리장성 주요 구역 트레킹 포함 전일정 진행.',
        '문화', '중국', 3100000,
        TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2025-09-15','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[중국] 상하이·저장성 힐링 5일', 
        '상하이 모던타운 체험 및 저장성 고즈넉한 마을에서 여유로운 힐링 일정입니다.',
        '힐링', '중국', 2950000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-05','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[중국] 쓰촨 판다 탐험 7일', 
        '청두 국립 보호구역 판다 관찰과 사천 전통음식 체험, 절경 트레킹 포함 코스입니다.',
        '탐험', '중국', 3300000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-16','YYYY-MM-DD'),
        15, 1);

-- ?? 태국
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[태국] 방콕 문화유산과 사원 5일', 
        '왕궁·에메랄드사원·담넌사두억 수상시장 등 태국 문화의 정수를 경험합니다.',
        '문화', '태국', 2800000,
        TO_DATE('2025-10-15','YYYY-MM-DD'), TO_DATE('2025-10-19','YYYY-MM-DD'),
        20, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[태국] 치앙마이 힐링,스파 6일', 
        '치앙마이 전통 마사지와 자연림 스파, 산림욕이 포함된 휴식형 일정입니다.',
        '힐링', '태국', 3000000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-06','YYYY-MM-DD'),
        20, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[태국] 피피섬 탐험 + 해양 액티비티 5일', 
        '피피섬 스노클링, 무릉도원 해변 탐방, 해양 액티비티 중심의 탐험 코스입니다.',
        '탐험', '태국', 3150000,
        TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2025-11-14','YYYY-MM-DD'),
        20, 1);

-- ?? 베트남
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[베트남] 하노이 유서 깊은 문화 5일', 
        '하노이 구시가지와 문묘, 호안끼엠 호수 중심의 문화 탐방 일정입니다.',
        '문화', '베트남', 2700000,
        TO_DATE('2025-11-15','YYYY-MM-DD'), TO_DATE('2025-11-19','YYYY-MM-DD'),
        18, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[베트남] 다낭 힐링 비치 6일', 
        '다낭 해변에서의 자유시간, 바나힐즈 힐링 스파 코스 포함 여유 일정입니다.',
        '힐링', '베트남', 2900000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-06','YYYY-MM-DD'),
        18, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[베트남] 사파 산악 트레킹 7일', 
        '사파 고산 마을 트레킹 및 소수민족 문화 체험, 장엄한 풍경이 매력입니다.',
        '탐험', '베트남', 3050000,
        TO_DATE('2025-12-10','YYYY-MM-DD'), TO_DATE('2025-12-16','YYYY-MM-DD'),
        18, 1);

-- ?? 싱가포르
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[싱가포르] 마리나베이·문화 체험 5일', 
        '마리나베이 샌즈·차이나타운·리틀인디아 중심 문화투어와 야경 감상이 포함됩니다.',
        '문화', '싱가포르', 3800000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-05','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[싱가포르] 센토사 힐링 + 리조트 6일', 
        '센토사 섬에서의 리조트 숙박과 힐링 스파, 해변 액티비티 포함 여유 일정입니다.',
        '힐링', '싱가포르', 4000000,
        TO_DATE('2025-12-06','YYYY-MM-DD'), TO_DATE('2025-12-11','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[싱가포르] 가든스·나이트 사파리 탐험 5일', 
        '가든스 바이 더 베이, 나이트 사파리, 주롱새공원까지 포함하는 자연·탐험 일정입니다.',
        '탐험', '싱가포르', 4150000,
        TO_DATE('2025-12-11','YYYY-MM-DD'), TO_DATE('2025-12-15','YYYY-MM-DD'),
        8, 1);

-- ?? 미국
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[미국] 서부 국립공원 로드트립 8일',
        '그랜드캐니언, 요세미티, 세쿼이아 등 서부 국립공원 3대장을 포함한 장대한 로드트립 일정입니다.',
        '탐험', '미국', 12990000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-08','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[미국] 뉴잉글랜드 문화·역사 투어 7일',
        '필라델피아·보스턴·하버드 등 미국 초기 역사를 따라가는 문화유산 코스입니다.',
        '문화', '미국', 10990000,
        TO_DATE('2025-10-05','YYYY-MM-DD'), TO_DATE('2025-10-11','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[미국] 플로리다 해변 힐링 6일',
        '마이애미 해변에서의 스파·리조트 휴양과 에버글레이즈 국립공원 투어를 결합한 힐링 코스입니다.',
        '힐링', '미국', 11990000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-06','YYYY-MM-DD'),
        10, 1);

-- ?? 캐나다
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[캐나다] 밴프·레이크루이스 탐험 7일',
        '로키 산맥의 대표 호수 밴프·레이크루이스 트레킹과 야생동물 관찰 포함 일정입니다.',
        '탐험', '캐나다', 8900000,
        TO_DATE('2025-07-10','YYYY-MM-DD'), TO_DATE('2025-07-16','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[캐나다] 퀘벡·몬트리올 문화기행 6일',
        '프렌치 쿼터 퀘벡과 몬트리올 구시가지 중심의 유럽 감성 문화여행입니다.',
        '문화', '캐나다', 7900000,
        TO_DATE('2025-08-05','YYYY-MM-DD'), TO_DATE('2025-08-10','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[캐나다] 밴쿠버 힐링 리조트 5일',
        '밴쿠버 인근 리조트에서의 스파·자연휴양과 록키 파크 단기 힐링 일정입니다.',
        '힐링', '캐나다', 8200000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-05','YYYY-MM-DD'),
        12, 1);

-- ?? 멕시코
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[멕시코] 칸쿤 해변 힐링 6일',
        '카리브해 칸쿤 리조트에서의 휴양과 투명한 바다에서의 스노클링 패키지입니다.',
        '힐링', '멕시코', 4500000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[멕시코] 멕시코시티 문화기행 5일',
        '테오티우아칸 피라미드·소칼로·프리다 칼로 박물관 등 도시 문화코스입니다.',
        '문화', '멕시코', 4200000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-05','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[멕시코] 유카탄 정글 탐험 7일',
        '치첸이트사와 툴룸 고대 마야 유적지 탐험, 정글 트레킹 일정 포함입니다.',
        '탐험', '멕시코', 4800000,
        TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2025-11-16','YYYY-MM-DD'),
        15, 1);

-- ?? 남아프리카공화국
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[남아공] 케이프타운 + 가든루트 사파리 7일',
        '케이프타운, 가든루트까지 드라이브 후, 크루거 국립공원 또는 샴와리 리저브에서 빅5 사파리를 즐기는 일정입니다.',
        '탐험', '남아프리카공화국', 8900000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-07','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[남아공] 케이프타운 문화·와인 투어 5일',
        '테이블마운틴 케이블카, 로벤섬, 스텔렌보쉬 와이너리 투어 등을 포함한 문화 힐링 코스입니다.',
        '문화', '남아프리카공화국', 7200000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[남아공] 필라네즈버그 사파리 리조트 힐링 6일',
        '요하네스버그 인근 말라리아 프리 사파리 리조트에서 빅5 관람과 리조트 휴양을 결합한 힐링 패키지입니다.',
        '힐링', '남아프리카공화국', 8000000,
        TO_DATE('2025-11-05','YYYY-MM-DD'), TO_DATE('2025-11-10','YYYY-MM-DD'),
        10, 1);

-- ?? 이집트
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[이집트] 카이로 + 기자 피라미드 투어 5일',
        '카이로 바자르, 이슬람 지구 탐방 후 기자 피라미드와 스핑크스 상징 방문 일정입니다.',
        '문화', '이집트', 4800000,
        TO_DATE('2025-09-15','YYYY-MM-DD'), TO_DATE('2025-09-19','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[이집트] 나일강 크루즈 힐링 7일',
        '룩소르·아스완 구간의 나일강 크루즈 객실에서 스파·전망과 함께 일정을 즐기는 힐링 여행입니다.',
        '힐링', '이집트', 6200000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-07','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[이집트] 아부심벨·데저트 사파리 탐험 6일',
        '아부심벨 사원 방문, 사막 사파리 캠핑 + 별 관찰 포함 강렬한 탐험 일정입니다.',
        '탐험', '이집트', 5300000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        15, 1);

-- ?? 모로코
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[모로코] 마라케시·사하라 사막 투어 7일',
        '마라케시 시장, 메디나 탐방 후 사하라 사막 캠핑과 낙타 체험을 즐기는 문화+탐험 일정입니다.',
        '탐험', '모로코', 5600000,
        TO_DATE('2025-09-20','YYYY-MM-DD'), TO_DATE('2025-09-26','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[모로코] 페즈·쉐프샤우엔 문화기행 6일',
        '고대 도시 페즈와 ‘푸른 도시’ 쉐프샤우엔 탐방, 전통 공예·음식 체험 코스입니다.',
        '문화', '모로코', 5200000,
        TO_DATE('2025-10-05','YYYY-MM-DD'), TO_DATE('2025-10-10','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[모로코] 아틀라스 산맥 힐링 리트리트 6일',
        '아틀라스 산맥 리조트 숙박, 하이킹과 베르베르 마을 문화교류 힐링 일정입니다.',
        '힐링', '모로코', 5400000,
        TO_DATE('2025-10-12','YYYY-MM-DD'), TO_DATE('2025-10-17','YYYY-MM-DD'),
        12, 1);

-- ?? 케냐
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[케냐] 마사이마라 빅5 사파리 7일',
        '세렝게티 연례 대이동이 가능한 마사이마라 국립공원에서 빅5 포함 사파리 중심 탐험 일정입니다.',
        '탐험', '케냐', 7800000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-07','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[케냐] 나이로비 문화·보전 체험 5일',
        '나이로비 국립공원, 오픈 시장·현지 보호구역 방문 등 문화와 보전 경험 일정입니다.',
        '문화', '케냐', 6500000,
        TO_DATE('2025-11-15','YYYY-MM-DD'), TO_DATE('2025-11-19','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[케냐] 해안 리조트 힐링 6일',
        '몬발루 해안가 리조트에서의 휴양과 스노클링, 현지 문화 체험 힐링 일정입니다.',
        '힐링', '케냐', 7000000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-06','YYYY-MM-DD'),
        10, 1);

-- ?? 탄자니아
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[탄자니아] 킬리만자로 등반 탐험 9일',
        '아프리카 최고봉 킬리만자로 정상 등정, 사파리 포함 정통 탐험 일정입니다.',
        '탐험', '탄자니아', 9900000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-09','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[탄자니아] 세렝게티 + 응고롱고로 사파리 8일',
        '세렝게티 평원과 응고롱고로 분화구에서의 빅5 관찰 및 사진 촬영 일정입니다.',
        '탐험', '탄자니아', 9200000,
        TO_DATE('2025-12-10','YYYY-MM-DD'), TO_DATE('2025-12-17','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[탄자니아] 잔지바르 해변 힐링 6일',
        '잔지바르 섬 리조트에서의 해변 휴양, 스파와 해양 액티비티 중심 해변 힐링 코스입니다.',
        '힐링', '탄자니아', 8000000,
        TO_DATE('2025-12-18','YYYY-MM-DD'), TO_DATE('2025-12-23','YYYY-MM-DD'),
        8, 1);

-- ?? 브라질
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[브라질] 리우·이파네마 해변 힐링 6일',
        '코파카바나·이파네마 해변에서의 한적한 휴식과 보사노바 음악, 스파 체험 일정입니다.',
        '힐링', '브라질', 5500000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-06','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[브라질] 이과수 폭포 + 파라나 문화탐험 5일',
        '이과수 양쪽 국립공원 투어 + 파라나주 전통마을과 게이샤 전망대 방문 일정입니다.',
        '문화', '브라질', 6300000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[브라질] 판타날 야생동물 탐험 7일',
        '세계 최대 습지 판타날에서 재규어·카피바라·새 관찰 포함한 액티브 사파리 일정입니다.',
        '탐험', '브라질', 7000000,
        TO_DATE('2025-11-05','YYYY-MM-DD'), TO_DATE('2025-11-11','YYYY-MM-DD'),
        12, 1);

-- ?? 아르헨티나
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[아르헨티나] 부에노스아이레스 탱고 문화 5일',
        '탱고 공연과 클래스를 포함한 부에노스아이레스 도시문화 집중 코스입니다.',
        '문화', '아르헨티나', 4900000,
        TO_DATE('2025-09-15','YYYY-MM-DD'), TO_DATE('2025-09-19','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[아르헨티나] 페리토모레노·빙하 탐험 6일',
        '엘칼라파테 중심으로 페리토 모레노 빙하 보트 크루즈 + 아이스 트레킹 포함 탐험 일정입니다.',
        '탐험', '아르헨티나', 7200000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-06','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[아르헨티나] 멘도사 와인 힐링 5일',
        '안데스 산맥 아래 와이너리 투어와 말벡 와인 테이스팅, 리조트 힐링 일정입니다.',
        '힐링', '아르헨티나', 6500000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-14','YYYY-MM-DD'),
        10, 1);

-- ?? 페루
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[페루] 쿠스코·마추픽추 문화탐험 6일',
        '쿠스코 유적+성밸리 투어와 전통 직조 체험 및 마추픽추 전일 가이드 일정입니다.',
        '문화', '페루', 5400000,
        TO_DATE('2025-09-05','YYYY-MM-DD'), TO_DATE('2025-09-10','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[페루] 나스카·티티카카·호수 힐링 7일',
        '나스카 라인 비행 후 티티카카 호수 유람과 호수 위 리조트 힐링 일정입니다.',
        '힐링', '페루', 5800000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-07','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[페루] 안데스 고산 트레킹 탐험 8일',
        '프레즈노 트레킹 루트 + 안데스 고산숙박, 어드벤처 중심 일정입니다.',
        '탐험', '페루', 6200000,
        TO_DATE('2025-10-15','YYYY-MM-DD'), TO_DATE('2025-10-22','YYYY-MM-DD'),
        12, 1);

-- ?? 칠레
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[칠레] 산티아고·발파라이소 문화 투어 5일',
        '산티아고 시내 + 유네스코 지정 발파라이소 예술마을 탐방 일정입니다.',
        '문화', '칠레', 5200000,
        TO_DATE('2025-09-20','YYYY-MM-DD'), TO_DATE('2025-09-24','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[칠레] 파타고니아 토레스델파이네 탐험 7일',
        '토레스 델 파이네 국립공원 트레킹과 아이스필드(페리토 모레노) 당일투어 포함 탐험 일정입니다.',
        '탐험', '칠레', 8000000,
        TO_DATE('2025-10-05','YYYY-MM-DD'), TO_DATE('2025-10-11','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[칠레] 발디비아 와인 + 휴양 힐링 6일',
        '발디비아 인근 와이너리 투어 + 해변 리조트 휴양 일정입니다.',
        '힐링', '칠레', 6100000,
        TO_DATE('2025-10-12','YYYY-MM-DD'), TO_DATE('2025-10-17','YYYY-MM-DD'),
        12, 1);

-- ?? 콜롬비아
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[콜롬비아] 보고타·카르타헤나 문화여행 6일',
        '보고타 시내 유적, 골목 예술 투어 후 카르타헤나 올드타운 문화 일정입니다.',
        '문화', '콜롬비아', 4800000,
        TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2025-09-15','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[콜롬비아] 코스타리카 커피농장 힐링 5일',
        '콜롬비아 고지대 커피농장 방문 및 숙박, 전통 커피체험과 산촌 힐링 일정입니다.',
        '힐링', '콜롬비아', 5100000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-05','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[콜롬비아] 타이로나 국립공원 탐험 6일',
        '카리브해 코스타 타이로나 국립공원 트레킹+해변 탐험 일정입니다.',
        '탐험', '콜롬비아', 5600000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        12, 1);


-- 프랑스 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[프랑스] 파리 문화 탐방 5일', '루브르 박물관, 에펠탑 등 파리의 대표 명소를 탐방하는 일정입니다.', '문화', '프랑스', 2500000, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-05', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[프랑스] 프로방스 와인 투어 6일', '프로방스 지역의 와이너리 투어와 미식 여행을 즐기는 코스입니다.', '미식', '프랑스', 3200000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[프랑스] 니스 해변 휴양 4일', '니스의 아름다운 해변에서 여유로운 휴식을 즐기는 일정입니다.', '휴양', '프랑스', 2800000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-23', 'YYYY-MM-DD'), 10, 1);

-- 이탈리아 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[이탈리아] 로마 역사 탐방 5일', '콜로세움, 바티칸 시국 등 로마의 역사적인 명소를 탐방하는 일정입니다.', '문화', '이탈리아', 2700000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-09', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[이탈리아] 베네치아 수상 여행 4일', '베네치아의 운하를 따라 곤돌라를 타고 여행하는 코스입니다.', '힐링', '이탈리아', 3000000, TO_DATE('2025-08-12', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[이탈리아] 피렌체 미술 탐방 5일', '우피치 미술관 등 피렌체의 미술 작품을 감상하는 일정입니다.', '문화', '이탈리아', 2900000, TO_DATE('2025-08-17', 'YYYY-MM-DD'), TO_DATE('2025-08-21', 'YYYY-MM-DD'), 10, 1);

-- 스페인 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[스페인] 바르셀로나 문화 탐방 5일', '사그라다 파밀리아 성당 등 바르셀로나의 문화 명소를 탐방하는 일정입니다.', '문화', '스페인', 2600000, TO_DATE('2025-08-08', 'YYYY-MM-DD'), TO_DATE('2025-08-12', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[스페인] 마드리드 역사 탐방 4일', '프라도 미술관 등 마드리드의 역사적인 명소를 탐방하는 코스입니다.', '문화', '스페인', 2500000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-23', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[스페인] 발렌시아 해변 휴양 5일', '발렌시아의 해변에서 여유로운 휴식을 즐기는 일정입니다.', '휴양', '스페인', 2800000, TO_DATE('2025-08-25', 'YYYY-MM-DD'), TO_DATE('2025-08-29', 'YYYY-MM-DD'), 10, 1);

-- 영국 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[영국] 런던 역사 탐방 5일', '버킹엄 궁전, 대영 박물관 등 런던의 역사적인 명소를 탐방하는 일정입니다.', '문화', '영국', 2700000, TO_DATE('2025-08-03', 'YYYY-MM-DD'), TO_DATE('2025-08-07', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[영국] 에든버러 문화 탐방 4일', '에든버러 성, 왕실 보석 등 에든버러의 문화 명소를 탐방하는 코스입니다.', '문화', '영국', 2500000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-13', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[영국] 옥스퍼드 대학 탐방 5일', '옥스퍼드 대학의 역사적인 건축물과 캠퍼스를 탐방하는 일정입니다.', '문화', '영국', 2900000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-19', 'YYYY-MM-DD'), 10, 1);

-- 스위스 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[스위스] 인터라켄 자연 탐방 5일', '융프라우 등 알프스 산맥의 자연을 탐방하는 일정입니다.', '탐험', '스위스', 3100000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-09', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[스위스] 취리히 문화 탐방 4일', '취리히 미술관, 구시가지 등 취리히의 문화 명소를 탐방하는 코스입니다.', '문화', '스위스', 2800000, TO_DATE('2025-08-12', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[스위스] 루체른 호수 휴양 5일', '루체른 호수에서의 여유로운 휴식을 즐기는 일정입니다.', '휴양', '스위스', 3000000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-24', 'YYYY-MM-DD'), 10, 1);

-- 호주 여행 상품 등록 (힐링 테마)
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[호주] 그레이트 오션 로드 드라이브 + 해변 휴양 5일',
        '빅토리아주의 그레이트 오션 로드를 따라 펼쳐지는 드라이브 코스와 함께, 로크 아드 해변에서의 여유로운 휴식과 스파를 즐기는 일정입니다.',
        '힐링', '호주', 3200000, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-05', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[호주] 시드니 문화 탐방 + 원주민 체험 4일',
        '시드니의 오페라 하우스, 하버 브리지 등 대표적인 문화 유산을 탐방하고, 원주민 문화 체험과 전통 예술 공연을 즐기는 일정입니다.',
        '문화', '호주', 2800000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-13', 'YYYY-MM-DD'), 12, 1);
        
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[호주] 블루 마운틴 하이킹 + 자연 탐험 6일',
        '블루 마운틴 국립공원의 다양한 하이킹 코스를 따라 가이드와 함께 자연을 탐험하고, 야생 동물 관찰 및 캠핑을 경험하는 일정입니다.',
        '탐험', '호주', 3500000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-20', 'YYYY-MM-DD'), 10, 1);
        
-- 뉴질랜드 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[뉴질랜드] 로토루아 온천 힐링 5일', '로토루아의 지열 온천에서 휴식을 취하며 Rongo? 전통 치유를 체험하는 일정입니다.', '힐링', '뉴질랜드', 2800000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-14', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[뉴질랜드] 마오리 문화 탐방 4일', '로토루아에서 마오리 전통 마라에 방문과 하카 공연을 포함한 문화 체험 일정입니다.', '문화', '뉴질랜드', 2600000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-18', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[뉴질랜드] 통가리로 알파인 크로싱 탐험 5일', '세계적인 하이킹 코스인 통가리로 알파인 크로싱을 포함한 자연 탐험 일정입니다.', '탐험', '뉴질랜드', 3000000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-24', 'YYYY-MM-DD'), 10, 1);

-- 피지 여행 상품 등록
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[피지] 로빈슨 크루소 섬 힐링 4일', '로빈슨 크루소 섬에서 스노클링, 스파, 전통 마을 방문을 포함한 힐링 일정입니다.', '힐링', '피지', 2700000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-08', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[피지] 전통 마을 문화 탐방 3일', '피지 전통 마을에서 Kava 의식, Meke 공연, 로보 요리 체험을 포함한 문화 일정입니다.', '문화', '피지', 2500000, TO_DATE('2025-08-12', 'YYYY-MM-DD'), TO_DATE('2025-08-14', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[피지] 부키니 섬 탐험 5일', '피지 부키니 섬에서 카약, 빌리빌리 래프팅, 폭포 수영을 포함한 탐험 일정입니다.', '탐험', '피지', 2900000, TO_DATE('2025-08-18', 'YYYY-MM-DD'), TO_DATE('2025-08-22', 'YYYY-MM-DD'), 10, 1);


-- 예약정보 테이블
CREATE SEQUENCE res_seq;

CREATE TABLE tbl_reservation(r_code NUMBER NOT NULL
                         , user_no NUMBER NOT NULL
                         , p_code NUMBER NOT NULL
                         , status NUMBER DEFAULT 1 NOT NULL
                         , amount NUMBER DEFAULT 1 NOT NULL);
                         
INSERT INTO tbl_reservation
VALUES (res_seq.nextval, 2, 1, 1, 1);

select * from tbl_reservation;


                         
-- 찜 테이블
CREATE TABLE tbl_wish(user_no NUMBER NOT NULL
                  , p_code NUMBER NOT NULL);
                  
INSERT INTO tbl_wish
VALUES (1, 1);

INSERT INTO tbl_wish
VALUES (1, 2);

INSERT INTO tbl_wish
VALUES (1, 3);
                  
-- QnA 테이블
CREATE SEQUENCE qna_seq;

CREATE TABLE tbl_qna(q_code NUMBER NOT NULL PRIMARY KEY
                 , user_no NUMBER NOT NULL
                 , relation_qcode NUMBER
                 , type varchar2(20)
                 , title VARCHAR2(30)
                 , question VARCHAR2(1000) NOT NULL
                 , status NUMBER DEFAULT 1 NOT NULL
                 , q_date DATE DEFAULT SYSDATE NOT NULL);


-- 리뷰 테이블
CREATE SEQUENCE rev_seq;
CREATE TABLE tbl_review(rev_code NUMBER NOT NULL PRIMARY KEY
                    , user_no NUMBER NOT NULL
                    , p_code NUMBER NOT NULL
                    , title VARCHAR2(30) NOT NULL
                    , content VARCHAR2(1000)
                    , star NUMBER DEFAULT 0
                    , created_at DATE DEFAULT SYSDATE NOT NULL);
                    
                    
INSERT INTO tbl_review (
    rev_code, user_no, p_code, title, content, star, created_at
) VALUES (
    rev_seq.NEXTVAL, 1, 2, '좋아요', '정말 만족해요!', 5, SYSDATE
);



SELECT * FROM tbl_user;
SELECT * FROM tbl_country;
SELECT * FROM tbl_qna;
SELECT * FROM tbl_product ORDER BY p_code;
SELECT * FROM tbl_review;
SELECT * FROM tbl_reservation;
SELECT * FROM tbl_wish;

ALTER TABLE tbl_reservation
ADD t_price NUMBER DEFAULT 100;

ALTER TABLE tbl_reservation
MODIFY t_price NOT NULL;

commit;
