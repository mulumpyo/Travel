


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


-- ���� ���̺�
CREATE SEQUENCE user_seq;

CREATE TABLE tbl_user (user_no NUMBER NOT NULL PRIMARY KEY
                   , user_id VARCHAR2(64) NOT NULL
                   , user_pw VARCHAR2(20) NOT NULL
                   , user_name VARCHAR2(50) NOT NULL
                   , user_birth DATE
                   , user_phone VARCHAR2(15)
                   , isadmin NUMBER default 0 NOT NULL );

INSERT INTO tbl_user VALUES (user_seq.nextval, 'user00', '1111', '�����', TO_DATE('2002-01-02','YYYY-MM-DD'), '010-0000-1111', 1);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user01', '1111', '���ȯ', TO_DATE('1965-03-12','YYYY-MM-DD'), '010-0000-1001', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user02', '1111', '��������', TO_DATE('1970-08-24','YYYY-MM-DD'), '010-0000-1002', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user03', '1111', '������', TO_DATE('1982-11-03','YYYY-MM-DD'), '010-0000-1003', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user04', '1111', '���̿�', TO_DATE('1995-01-18','YYYY-MM-DD'), '010-0000-1004', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user05', '1111', '���ع�', TO_DATE('2000-05-25','YYYY-MM-DD'), '010-0000-1005', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user06', '1111', '������', TO_DATE('1968-08-30','YYYY-MM-DD'), '010-0000-1006', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user07', '1111', '����ȣ', TO_DATE('1975-12-02','YYYY-MM-DD'), '010-0000-1007', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user08', '1111', '������', TO_DATE('1988-09-14','YYYY-MM-DD'), '010-0000-1008', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user09', '1111', '������', TO_DATE('1991-07-08','YYYY-MM-DD'), '010-0000-1009', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user10', '1111', '������', TO_DATE('2003-03-29','YYYY-MM-DD'), '010-0000-1010', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user11', '1111', '������', TO_DATE('1963-10-21','YYYY-MM-DD'), '010-0000-1011', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user12', '1111', '������', TO_DATE('1972-06-15','YYYY-MM-DD'), '010-0000-1012', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user13', '1111', '������', TO_DATE('1985-02-10','YYYY-MM-DD'), '010-0000-1013', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user14', '1111', '������', TO_DATE('1993-11-05','YYYY-MM-DD'), '010-0000-1014', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user15', '1111', '���¾�', TO_DATE('2001-04-01','YYYY-MM-DD'), '010-0000-1015', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user16', '1111', '������', TO_DATE('1969-08-11','YYYY-MM-DD'), '010-0000-1016', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user17', '1111', '������', TO_DATE('1976-01-20','YYYY-MM-DD'), '010-0000-1017', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user18', '1111', '�ϼҿ�', TO_DATE('1981-05-19','YYYY-MM-DD'), '010-0000-1018', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user19', '1111', '�嵿��', TO_DATE('1997-10-28','YYYY-MM-DD'), '010-0000-1019', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user20', '1111', 'ȫ����', TO_DATE('2004-02-13','YYYY-MM-DD'), '010-0000-1020', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user21', '1111', '����', TO_DATE('1966-06-06','YYYY-MM-DD'), '010-0000-1021', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user22', '1111', '����ȣ', TO_DATE('1979-09-30','YYYY-MM-DD'), '010-0000-1022', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user23', '1111', '������', TO_DATE('1987-12-22','YYYY-MM-DD'), '010-0000-1023', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user24', '1111', '���ϴ�', TO_DATE('1990-03-11','YYYY-MM-DD'), '010-0000-1024', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user25', '1111', '������', TO_DATE('2002-06-17','YYYY-MM-DD'), '010-0000-1025', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user26', '1111', '������', TO_DATE('1962-11-29','YYYY-MM-DD'), '010-0000-1026', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user27', '1111', '������', TO_DATE('1974-04-04','YYYY-MM-DD'), '010-0000-1027', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user28', '1111', '���μ�', TO_DATE('1989-08-09','YYYY-MM-DD'), '010-0000-1028', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user29', '1111', '������', TO_DATE('1994-12-07','YYYY-MM-DD'), '010-0000-1029', 0);
INSERT INTO tbl_user VALUES (user_seq.nextval, 'user30', '1111', '�ǳ���', TO_DATE('2005-01-23','YYYY-MM-DD'), '010-0000-1030', 0);

SELECT * FROM tbl_user;

-- ���� ���̺�
CREATE TABLE tbl_country(country VARCHAR2(30) NOT NULL PRIMARY KEY
                     , continent VARCHAR2(20) NOT NULL);

--  Asia (code = 0)
INSERT INTO tbl_country VALUES ('�Ϻ�', 0);
INSERT INTO tbl_country VALUES ('�߱�', 0);
INSERT INTO tbl_country VALUES ('�±�', 0);
INSERT INTO tbl_country VALUES ('��Ʈ��', 0);
INSERT INTO tbl_country VALUES ('�̰�����', 0);

--  North America (code = 1)
INSERT INTO tbl_country VALUES ('�̱�', 1);
INSERT INTO tbl_country VALUES ('ĳ����', 1);
INSERT INTO tbl_country VALUES ('�߽���', 1);

--  Africa (code = 2)
INSERT INTO tbl_country VALUES ('��������ī��ȭ��', 2);
INSERT INTO tbl_country VALUES ('����Ʈ', 2);
INSERT INTO tbl_country VALUES ('�����', 2);
INSERT INTO tbl_country VALUES ('�ɳ�', 2);
INSERT INTO tbl_country VALUES ('ź�ڴϾ�', 2);

--  South America (code = 3)
INSERT INTO tbl_country VALUES ('�����', 3);
INSERT INTO tbl_country VALUES ('�Ƹ���Ƽ��', 3);
INSERT INTO tbl_country VALUES ('���', 3);
INSERT INTO tbl_country VALUES ('ĥ��', 3);
INSERT INTO tbl_country VALUES ('�ݷҺ��', 3);

--  Europe (code = 4)
INSERT INTO tbl_country VALUES ('������', 4);
INSERT INTO tbl_country VALUES ('��Ż����', 4);
INSERT INTO tbl_country VALUES ('������', 4);
INSERT INTO tbl_country VALUES ('����', 4);
INSERT INTO tbl_country VALUES ('������', 4);

--  Oceania (code = 5)
INSERT INTO tbl_country VALUES ('ȣ��', 5);
INSERT INTO tbl_country VALUES ('��������', 5);
INSERT INTO tbl_country VALUES ('����', 5);

SELECT * FROM tbl_country;

-- ��Ű�� ��ǰ ���̺�
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

        
                     

-- ?? �Ϻ�
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�Ϻ�] ���� ��ȭ Ž�� 6��', 
        '���䡤���󡤿���ī �߽����� �Ϻ��� ���빮ȭ�� ����, ������ ������ ǳ���� �����Դϴ�.',
        '��ȭ', '�Ϻ�', 3200000,
        TO_DATE('2025-08-10','YYYY-MM-DD'), TO_DATE('2025-08-15','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�Ϻ�] Ȫī�̵� ��õ ���� 5��', 
        '�����Ρ��뺸������ ��õ���� ������ �޽İ� �ڿ� �� ������ ���� �Ϻ��� �ڽ��Դϴ�.',
        '����', '�Ϻ�', 3400000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-05','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�Ϻ�] ���졤������ Ž�� 7��', 
        '������ ���ɰ� ������ ���, �����ī ��������� ������ ��Ƽ�� �����Դϴ�.',
        'Ž��', '�Ϻ�', 3600000,
        TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2025-09-16','YYYY-MM-DD'),
        12, 1);

-- ?? �߱�
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�߱�] �ϰ� Ȳ�ã������强 6��', 
        '�ڱݼ� �߽��� ��ȭŽ��� �����强 �ֿ� ���� Ʈ��ŷ ���� ������ ����.',
        '��ȭ', '�߱�', 3100000,
        TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2025-09-15','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�߱�] �����̡����强 ���� 5��', 
        '������ ���Ÿ�� ü�� �� ���强 ������� �������� �����ο� ���� �����Դϴ�.',
        '����', '�߱�', 2950000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-05','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�߱�] ���� �Ǵ� Ž�� 7��', 
        'û�� ���� ��ȣ���� �Ǵ� ������ ��õ �������� ü��, ���� Ʈ��ŷ ���� �ڽ��Դϴ�.',
        'Ž��', '�߱�', 3300000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-16','YYYY-MM-DD'),
        15, 1);

-- ?? �±�
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�±�] ���� ��ȭ����� ��� 5��', 
        '�ձá����޶���������ͻ�ξ� ������� �� �±� ��ȭ�� ������ �����մϴ�.',
        '��ȭ', '�±�', 2800000,
        TO_DATE('2025-10-15','YYYY-MM-DD'), TO_DATE('2025-10-19','YYYY-MM-DD'),
        20, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�±�] ġ�Ӹ��� ����,���� 6��', 
        'ġ�Ӹ��� ���� �������� �ڿ��� ����, �긲���� ���Ե� �޽��� �����Դϴ�.',
        '����', '�±�', 3000000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-06','YYYY-MM-DD'),
        20, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�±�] ���Ǽ� Ž�� + �ؾ� ��Ƽ��Ƽ 5��', 
        '���Ǽ� ����Ŭ��, �������� �غ� Ž��, �ؾ� ��Ƽ��Ƽ �߽��� Ž�� �ڽ��Դϴ�.',
        'Ž��', '�±�', 3150000,
        TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2025-11-14','YYYY-MM-DD'),
        20, 1);

-- ?? ��Ʈ��
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[��Ʈ��] �ϳ��� ���� ���� ��ȭ 5��', 
        '�ϳ��� ���ð����� ����, ȣ�ȳ��� ȣ�� �߽��� ��ȭ Ž�� �����Դϴ�.',
        '��ȭ', '��Ʈ��', 2700000,
        TO_DATE('2025-11-15','YYYY-MM-DD'), TO_DATE('2025-11-19','YYYY-MM-DD'),
        18, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[��Ʈ��] �ٳ� ���� ��ġ 6��', 
        '�ٳ� �غ������� �����ð�, �ٳ����� ���� ���� �ڽ� ���� ���� �����Դϴ�.',
        '����', '��Ʈ��', 2900000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-06','YYYY-MM-DD'),
        18, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[��Ʈ��] ���� ��� Ʈ��ŷ 7��', 
        '���� ��� ���� Ʈ��ŷ �� �Ҽ����� ��ȭ ü��, ����� ǳ���� �ŷ��Դϴ�.',
        'Ž��', '��Ʈ��', 3050000,
        TO_DATE('2025-12-10','YYYY-MM-DD'), TO_DATE('2025-12-16','YYYY-MM-DD'),
        18, 1);

-- ?? �̰�����
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�̰�����] ���������̡���ȭ ü�� 5��', 
        '���������� ������̳�Ÿ���Ʋ�ε�� �߽� ��ȭ����� �߰� ������ ���Ե˴ϴ�.',
        '��ȭ', '�̰�����', 3800000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-05','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�̰�����] ����� ���� + ����Ʈ 6��', 
        '����� �������� ����Ʈ ���ڰ� ���� ����, �غ� ��Ƽ��Ƽ ���� ���� �����Դϴ�.',
        '����', '�̰�����', 4000000,
        TO_DATE('2025-12-06','YYYY-MM-DD'), TO_DATE('2025-12-11','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�̰�����] ���罺������Ʈ ���ĸ� Ž�� 5��', 
        '���罺 ���� �� ����, ����Ʈ ���ĸ�, �ַջ��������� �����ϴ� �ڿ���Ž�� �����Դϴ�.',
        'Ž��', '�̰�����', 4150000,
        TO_DATE('2025-12-11','YYYY-MM-DD'), TO_DATE('2025-12-15','YYYY-MM-DD'),
        8, 1);

-- ?? �̱�
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�̱�] ���� �������� �ε�Ʈ�� 8��',
        '�׷���ĳ�Ͼ�, �似��Ƽ, �����̾� �� ���� �������� 3������ ������ ����� �ε�Ʈ�� �����Դϴ�.',
        'Ž��', '�̱�', 12990000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-08','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�̱�] ���ױ۷��� ��ȭ������ ���� 7��',
        '�ʶ��Ǿơ������ϡ��Ϲ��� �� �̱� �ʱ� ���縦 ���󰡴� ��ȭ���� �ڽ��Դϴ�.',
        '��ȭ', '�̱�', 10990000,
        TO_DATE('2025-10-05','YYYY-MM-DD'), TO_DATE('2025-10-11','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�̱�] �÷θ��� �غ� ���� 6��',
        '���ֹ̾� �غ������� ���ġ�����Ʈ �޾�� �����۷����� �������� ��� ������ ���� �ڽ��Դϴ�.',
        '����', '�̱�', 11990000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-06','YYYY-MM-DD'),
        10, 1);

-- ?? ĳ����
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ĳ����] ����������ũ���̽� Ž�� 7��',
        '��Ű ����� ��ǥ ȣ�� ����������ũ���̽� Ʈ��ŷ�� �߻����� ���� ���� �����Դϴ�.',
        'Ž��', 'ĳ����', 8900000,
        TO_DATE('2025-07-10','YYYY-MM-DD'), TO_DATE('2025-07-16','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ĳ����] ��������Ʈ���� ��ȭ���� 6��',
        '����ġ ���� ������ ��Ʈ���� ���ð��� �߽��� ���� ���� ��ȭ�����Դϴ�.',
        '��ȭ', 'ĳ����', 7900000,
        TO_DATE('2025-08-05','YYYY-MM-DD'), TO_DATE('2025-08-10','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ĳ����] ����� ���� ����Ʈ 5��',
        '����� �α� ����Ʈ������ ���ġ��ڿ��޾�� ��Ű ��ũ �ܱ� ���� �����Դϴ�.',
        '����', 'ĳ����', 8200000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-05','YYYY-MM-DD'),
        12, 1);

-- ?? �߽���
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�߽���] ĭ�� �غ� ���� 6��',
        'ī������ ĭ�� ����Ʈ������ �޾�� ������ �ٴٿ����� ����Ŭ�� ��Ű���Դϴ�.',
        '����', '�߽���', 4500000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�߽���] �߽��ڽ�Ƽ ��ȭ���� 5��',
        '�׿�Ƽ���ĭ �Ƕ�̵塤��Į�Ρ������� Į�� �ڹ��� �� ���� ��ȭ�ڽ��Դϴ�.',
        '��ȭ', '�߽���', 4200000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-05','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�߽���] ��īź ���� Ž�� 7��',
        'ġþ��Ʈ��� ���� ��� ���� ������ Ž��, ���� Ʈ��ŷ ���� �����Դϴ�.',
        'Ž��', '�߽���', 4800000,
        TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2025-11-16','YYYY-MM-DD'),
        15, 1);

-- ?? ��������ī��ȭ��
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[���ư�] ������Ÿ�� + �����Ʈ ���ĸ� 7��',
        '������Ÿ��, �����Ʈ���� ����̺� ��, ũ��� �������� �Ǵ� ���͸� �����꿡�� ��5 ���ĸ��� ���� �����Դϴ�.',
        'Ž��', '��������ī��ȭ��', 8900000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-07','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[���ư�] ������Ÿ�� ��ȭ������ ���� 5��',
        '���̺���ƾ ���̺�ī, �κ���, ���ڷ����� ���̳ʸ� ���� ���� ������ ��ȭ ���� �ڽ��Դϴ�.',
        '��ȭ', '��������ī��ȭ��', 7200000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[���ư�] �ʶ������� ���ĸ� ����Ʈ ���� 6��',
        '���ϳ׽����� �α� ���󸮾� ���� ���ĸ� ����Ʈ���� ��5 ������ ����Ʈ �޾��� ������ ���� ��Ű���Դϴ�.',
        '����', '��������ī��ȭ��', 8000000,
        TO_DATE('2025-11-05','YYYY-MM-DD'), TO_DATE('2025-11-10','YYYY-MM-DD'),
        10, 1);

-- ?? ����Ʈ
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[����Ʈ] ī�̷� + ���� �Ƕ�̵� ���� 5��',
        'ī�̷� ���ڸ�, �̽��� ���� Ž�� �� ���� �Ƕ�̵�� ����ũ�� ��¡ �湮 �����Դϴ�.',
        '��ȭ', '����Ʈ', 4800000,
        TO_DATE('2025-09-15','YYYY-MM-DD'), TO_DATE('2025-09-19','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[����Ʈ] ���ϰ� ũ���� ���� 7��',
        '��Ҹ����ƽ��� ������ ���ϰ� ũ���� ���ǿ��� ���ġ������� �Բ� ������ ���� ���� �����Դϴ�.',
        '����', '����Ʈ', 6200000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-07','YYYY-MM-DD'),
        15, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[����Ʈ] �ƺνɺ�������Ʈ ���ĸ� Ž�� 6��',
        '�ƺνɺ� ��� �湮, �縷 ���ĸ� ķ�� + �� ���� ���� ������ Ž�� �����Դϴ�.',
        'Ž��', '����Ʈ', 5300000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        15, 1);

-- ?? �����
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�����] �����ɽá����϶� �縷 ���� 7��',
        '�����ɽ� ����, �޵� Ž�� �� ���϶� �縷 ķ�ΰ� ��Ÿ ü���� ���� ��ȭ+Ž�� �����Դϴ�.',
        'Ž��', '�����', 5600000,
        TO_DATE('2025-09-20','YYYY-MM-DD'), TO_DATE('2025-09-26','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�����] ����������쿣 ��ȭ���� 6��',
        '��� ���� ����� ��Ǫ�� ���á� �������쿣 Ž��, ���� ���������� ü�� �ڽ��Դϴ�.',
        '��ȭ', '�����', 5200000,
        TO_DATE('2025-10-05','YYYY-MM-DD'), TO_DATE('2025-10-10','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�����] ��Ʋ�� ��� ���� ��Ʈ��Ʈ 6��',
        '��Ʋ�� ��� ����Ʈ ����, ����ŷ�� �������� ���� ��ȭ���� ���� �����Դϴ�.',
        '����', '�����', 5400000,
        TO_DATE('2025-10-12','YYYY-MM-DD'), TO_DATE('2025-10-17','YYYY-MM-DD'),
        12, 1);

-- ?? �ɳ�
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�ɳ�] �����̸��� ��5 ���ĸ� 7��',
        '������Ƽ ���� ���̵��� ������ �����̸��� ������������ ��5 ���� ���ĸ� �߽� Ž�� �����Դϴ�.',
        'Ž��', '�ɳ�', 7800000,
        TO_DATE('2025-11-01','YYYY-MM-DD'), TO_DATE('2025-11-07','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�ɳ�] ���̷κ� ��ȭ������ ü�� 5��',
        '���̷κ� ��������, ���� ���塤���� ��ȣ���� �湮 �� ��ȭ�� ���� ���� �����Դϴ�.',
        '��ȭ', '�ɳ�', 6500000,
        TO_DATE('2025-11-15','YYYY-MM-DD'), TO_DATE('2025-11-19','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�ɳ�] �ؾ� ����Ʈ ���� 6��',
        '��߷� �ؾȰ� ����Ʈ������ �޾�� ����Ŭ��, ���� ��ȭ ü�� ���� �����Դϴ�.',
        '����', '�ɳ�', 7000000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-06','YYYY-MM-DD'),
        10, 1);

-- ?? ź�ڴϾ�
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ź�ڴϾ�] ų�����ڷ� ��� Ž�� 9��',
        '������ī �ְ�� ų�����ڷ� ���� ����, ���ĸ� ���� ���� Ž�� �����Դϴ�.',
        'Ž��', 'ź�ڴϾ�', 9900000,
        TO_DATE('2025-12-01','YYYY-MM-DD'), TO_DATE('2025-12-09','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ź�ڴϾ�] ������Ƽ + ����հ�� ���ĸ� 8��',
        '������Ƽ ����� ����հ�� ��ȭ�������� ��5 ���� �� ���� �Կ� �����Դϴ�.',
        'Ž��', 'ź�ڴϾ�', 9200000,
        TO_DATE('2025-12-10','YYYY-MM-DD'), TO_DATE('2025-12-17','YYYY-MM-DD'),
        8, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ź�ڴϾ�] �����ٸ� �غ� ���� 6��',
        '�����ٸ� �� ����Ʈ������ �غ� �޾�, ���Ŀ� �ؾ� ��Ƽ��Ƽ �߽� �غ� ���� �ڽ��Դϴ�.',
        '����', 'ź�ڴϾ�', 8000000,
        TO_DATE('2025-12-18','YYYY-MM-DD'), TO_DATE('2025-12-23','YYYY-MM-DD'),
        8, 1);

-- ?? �����
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�����] ���졤���ĳ׸� �غ� ���� 6��',
        '����ī�ٳ������ĳ׸� �غ������� ������ �޽İ� ������ ����, ���� ü�� �����Դϴ�.',
        '����', '�����', 5500000,
        TO_DATE('2025-09-01','YYYY-MM-DD'), TO_DATE('2025-09-06','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�����] �̰��� ���� + �Ķ� ��ȭŽ�� 5��',
        '�̰��� ���� �������� ���� + �Ķ��� ���븶���� ���̻� ������ �湮 �����Դϴ�.',
        '��ȭ', '�����', 6300000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�����] ��Ÿ�� �߻����� Ž�� 7��',
        '���� �ִ� ���� ��Ÿ������ ��Ծī�ǹٶ󡤻� ���� ������ ��Ƽ�� ���ĸ� �����Դϴ�.',
        'Ž��', '�����', 7000000,
        TO_DATE('2025-11-05','YYYY-MM-DD'), TO_DATE('2025-11-11','YYYY-MM-DD'),
        12, 1);

-- ?? �Ƹ���Ƽ��
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�Ƹ���Ƽ��] �ο��뽺���̷��� �ʰ� ��ȭ 5��',
        '�ʰ� ������ Ŭ������ ������ �ο��뽺���̷��� ���ù�ȭ ���� �ڽ��Դϴ�.',
        '��ȭ', '�Ƹ���Ƽ��', 4900000,
        TO_DATE('2025-09-15','YYYY-MM-DD'), TO_DATE('2025-09-19','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�Ƹ���Ƽ��] �丮��𷹳롤���� Ž�� 6��',
        '��Į������ �߽����� �丮�� �𷹳� ���� ��Ʈ ũ���� + ���̽� Ʈ��ŷ ���� Ž�� �����Դϴ�.',
        'Ž��', '�Ƹ���Ƽ��', 7200000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-06','YYYY-MM-DD'),
        10, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�Ƹ���Ƽ��] �൵�� ���� ���� 5��',
        '�ȵ��� ��� �Ʒ� ���̳ʸ� ����� ���� ���� ���̽���, ����Ʈ ���� �����Դϴ�.',
        '����', '�Ƹ���Ƽ��', 6500000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-14','YYYY-MM-DD'),
        10, 1);

-- ?? ���
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[���] ���ڡ��������� ��ȭŽ�� 6��',
        '���� ����+���븮 ����� ���� ���� ü�� �� �������� ���� ���̵� �����Դϴ�.',
        '��ȭ', '���', 5400000,
        TO_DATE('2025-09-05','YYYY-MM-DD'), TO_DATE('2025-09-10','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[���] ����ī��ƼƼīī��ȣ�� ���� 7��',
        '����ī ���� ���� �� ƼƼīī ȣ�� ������ ȣ�� �� ����Ʈ ���� �����Դϴ�.',
        '����', '���', 5800000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-07','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[���] �ȵ��� ��� Ʈ��ŷ Ž�� 8��',
        '������� Ʈ��ŷ ��Ʈ + �ȵ��� ������, ��庥ó �߽� �����Դϴ�.',
        'Ž��', '���', 6200000,
        TO_DATE('2025-10-15','YYYY-MM-DD'), TO_DATE('2025-10-22','YYYY-MM-DD'),
        12, 1);

-- ?? ĥ��
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ĥ��] ��Ƽ�ư����Ķ��̼� ��ȭ ���� 5��',
        '��Ƽ�ư� �ó� + ���׽��� ���� ���Ķ��̼� �������� Ž�� �����Դϴ�.',
        '��ȭ', 'ĥ��', 5200000,
        TO_DATE('2025-09-20','YYYY-MM-DD'), TO_DATE('2025-09-24','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ĥ��] ��Ÿ��Ͼ� �䷹�������̳� Ž�� 7��',
        '�䷹�� �� ���̳� �������� Ʈ��ŷ�� ���̽��ʵ�(�丮�� �𷹳�) �������� ���� Ž�� �����Դϴ�.',
        'Ž��', 'ĥ��', 8000000,
        TO_DATE('2025-10-05','YYYY-MM-DD'), TO_DATE('2025-10-11','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[ĥ��] �ߵ��� ���� + �޾� ���� 6��',
        '�ߵ��� �α� ���̳ʸ� ���� + �غ� ����Ʈ �޾� �����Դϴ�.',
        '����', 'ĥ��', 6100000,
        TO_DATE('2025-10-12','YYYY-MM-DD'), TO_DATE('2025-10-17','YYYY-MM-DD'),
        12, 1);

-- ?? �ݷҺ��
INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�ݷҺ��] ����Ÿ��ī��Ÿ�쳪 ��ȭ���� 6��',
        '����Ÿ �ó� ����, ��� ���� ���� �� ī��Ÿ�쳪 �õ�Ÿ�� ��ȭ �����Դϴ�.',
        '��ȭ', '�ݷҺ��', 4800000,
        TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2025-09-15','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�ݷҺ��] �ڽ�Ÿ��ī Ŀ�ǳ��� ���� 5��',
        '�ݷҺ�� ������ Ŀ�ǳ��� �湮 �� ����, ���� Ŀ��ü��� ���� ���� �����Դϴ�.',
        '����', '�ݷҺ��', 5100000,
        TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2025-10-05','YYYY-MM-DD'),
        12, 1);

INSERT INTO tbl_product(p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1,
        '[�ݷҺ��] Ÿ�̷γ� �������� Ž�� 6��',
        'ī������ �ڽ�Ÿ Ÿ�̷γ� �������� Ʈ��ŷ+�غ� Ž�� �����Դϴ�.',
        'Ž��', '�ݷҺ��', 5600000,
        TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2025-10-15','YYYY-MM-DD'),
        12, 1);


-- ������ ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] �ĸ� ��ȭ Ž�� 5��', '��긣 �ڹ���, ����ž �� �ĸ��� ��ǥ ��Ҹ� Ž���ϴ� �����Դϴ�.', '��ȭ', '������', 2500000, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-05', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] ���ι潺 ���� ���� 6��', '���ι潺 ������ ���̳ʸ� ����� �̽� ������ ���� �ڽ��Դϴ�.', '�̽�', '������', 3200000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] �Ͻ� �غ� �޾� 4��', '�Ͻ��� �Ƹ��ٿ� �غ����� �����ο� �޽��� ���� �����Դϴ�.', '�޾�', '������', 2800000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-23', 'YYYY-MM-DD'), 10, 1);

-- ��Ż���� ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[��Ż����] �θ� ���� Ž�� 5��', '�ݷμ���, ��Ƽĭ �ñ� �� �θ��� �������� ��Ҹ� Ž���ϴ� �����Դϴ�.', '��ȭ', '��Ż����', 2700000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-09', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[��Ż����] ����ġ�� ���� ���� 4��', '����ġ���� ���ϸ� ���� �ﵹ�� Ÿ�� �����ϴ� �ڽ��Դϴ�.', '����', '��Ż����', 3000000, TO_DATE('2025-08-12', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[��Ż����] �Ƿ�ü �̼� Ž�� 5��', '����ġ �̼��� �� �Ƿ�ü�� �̼� ��ǰ�� �����ϴ� �����Դϴ�.', '��ȭ', '��Ż����', 2900000, TO_DATE('2025-08-17', 'YYYY-MM-DD'), TO_DATE('2025-08-21', 'YYYY-MM-DD'), 10, 1);

-- ������ ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] �ٸ����γ� ��ȭ Ž�� 5��', '��׶�� �Ĺи��� ���� �� �ٸ����γ��� ��ȭ ��Ҹ� Ž���ϴ� �����Դϴ�.', '��ȭ', '������', 2600000, TO_DATE('2025-08-08', 'YYYY-MM-DD'), TO_DATE('2025-08-12', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] ���帮�� ���� Ž�� 4��', '���� �̼��� �� ���帮���� �������� ��Ҹ� Ž���ϴ� �ڽ��Դϴ�.', '��ȭ', '������', 2500000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-23', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] �߷��þ� �غ� �޾� 5��', '�߷��þ��� �غ����� �����ο� �޽��� ���� �����Դϴ�.', '�޾�', '������', 2800000, TO_DATE('2025-08-25', 'YYYY-MM-DD'), TO_DATE('2025-08-29', 'YYYY-MM-DD'), 10, 1);

-- ���� ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[����] ���� ���� Ž�� 5��', '��ŷ�� ����, �뿵 �ڹ��� �� ������ �������� ��Ҹ� Ž���ϴ� �����Դϴ�.', '��ȭ', '����', 2700000, TO_DATE('2025-08-03', 'YYYY-MM-DD'), TO_DATE('2025-08-07', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[����] ������� ��ȭ Ž�� 4��', '������� ��, �ս� ���� �� ��������� ��ȭ ��Ҹ� Ž���ϴ� �ڽ��Դϴ�.', '��ȭ', '����', 2500000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-13', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[����] �����۵� ���� Ž�� 5��', '�����۵� ������ �������� ���๰�� ķ�۽��� Ž���ϴ� �����Դϴ�.', '��ȭ', '����', 2900000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-19', 'YYYY-MM-DD'), 10, 1);

-- ������ ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] ���Ͷ��� �ڿ� Ž�� 5��', '������� �� ������ ����� �ڿ��� Ž���ϴ� �����Դϴ�.', 'Ž��', '������', 3100000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-09', 'YYYY-MM-DD'), 15, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] �븮�� ��ȭ Ž�� 4��', '�븮�� �̼���, ���ð��� �� �븮���� ��ȭ ��Ҹ� Ž���ϴ� �ڽ��Դϴ�.', '��ȭ', '������', 2800000, TO_DATE('2025-08-12', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[������] ��ü�� ȣ�� �޾� 5��', '��ü�� ȣ�������� �����ο� �޽��� ���� �����Դϴ�.', '�޾�', '������', 3000000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-24', 'YYYY-MM-DD'), 10, 1);

-- ȣ�� ���� ��ǰ ��� (���� �׸�)
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[ȣ��] �׷���Ʈ ���� �ε� ����̺� + �غ� �޾� 5��',
        '���丮������ �׷���Ʈ ���� �ε带 ���� �������� ����̺� �ڽ��� �Բ�, ��ũ �Ƶ� �غ������� �����ο� �޽İ� ���ĸ� ���� �����Դϴ�.',
        '����', 'ȣ��', 3200000, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-05', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[ȣ��] �õ�� ��ȭ Ž�� + ���ֹ� ü�� 4��',
        '�õ���� ����� �Ͽ콺, �Ϲ� �긮�� �� ��ǥ���� ��ȭ ������ Ž���ϰ�, ���ֹ� ��ȭ ü��� ���� ���� ������ ���� �����Դϴ�.',
        '��ȭ', 'ȣ��', 2800000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-13', 'YYYY-MM-DD'), 12, 1);
        
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[ȣ��] ��� ����ƾ ����ŷ + �ڿ� Ž�� 6��',
        '��� ����ƾ ���������� �پ��� ����ŷ �ڽ��� ���� ���̵�� �Բ� �ڿ��� Ž���ϰ�, �߻� ���� ���� �� ķ���� �����ϴ� �����Դϴ�.',
        'Ž��', 'ȣ��', 3500000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-20', 'YYYY-MM-DD'), 10, 1);
        
-- �������� ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[��������] ������ ��õ ���� 5��', '�������� ���� ��õ���� �޽��� ���ϸ� Rongo? ���� ġ���� ü���ϴ� �����Դϴ�.', '����', '��������', 2800000, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-14', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[��������] ������ ��ȭ Ž�� 4��', '�����ƿ��� ������ ���� ���� �湮�� ��ī ������ ������ ��ȭ ü�� �����Դϴ�.', '��ȭ', '��������', 2600000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-18', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[��������] �밡���� ������ ũ�ν� Ž�� 5��', '�������� ����ŷ �ڽ��� �밡���� ������ ũ�ν��� ������ �ڿ� Ž�� �����Դϴ�.', 'Ž��', '��������', 3000000, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-24', 'YYYY-MM-DD'), 10, 1);

-- ���� ���� ��ǰ ���
INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[����] �κ� ũ��� �� ���� 4��', '�κ� ũ��� ������ ����Ŭ��, ����, ���� ���� �湮�� ������ ���� �����Դϴ�.', '����', '����', 2700000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-08', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[����] ���� ���� ��ȭ Ž�� 3��', '���� ���� �������� Kava �ǽ�, Meke ����, �κ� �丮 ü���� ������ ��ȭ �����Դϴ�.', '��ȭ', '����', 2500000, TO_DATE('2025-08-12', 'YYYY-MM-DD'), TO_DATE('2025-08-14', 'YYYY-MM-DD'), 12, 1);

INSERT INTO tbl_product (p_code, user_no, title, description, theme, country, price, start_day, end_day, max_qty, status)
VALUES (pro_seq.nextval, 1, '[����] ��Ű�� �� Ž�� 5��', '���� ��Ű�� ������ ī��, �������� ������, ���� ������ ������ Ž�� �����Դϴ�.', 'Ž��', '����', 2900000, TO_DATE('2025-08-18', 'YYYY-MM-DD'), TO_DATE('2025-08-22', 'YYYY-MM-DD'), 10, 1);


-- �������� ���̺�
CREATE SEQUENCE res_seq;

CREATE TABLE tbl_reservation(r_code NUMBER NOT NULL
                         , user_no NUMBER NOT NULL
                         , p_code NUMBER NOT NULL
                         , status NUMBER DEFAULT 1 NOT NULL
                         , amount NUMBER DEFAULT 1 NOT NULL);
                         
INSERT INTO tbl_reservation
VALUES (res_seq.nextval, 2, 1, 1, 1);

select * from tbl_reservation;


                         
-- �� ���̺�
CREATE TABLE tbl_wish(user_no NUMBER NOT NULL
                  , p_code NUMBER NOT NULL);
                  
INSERT INTO tbl_wish
VALUES (1, 1);

INSERT INTO tbl_wish
VALUES (1, 2);

INSERT INTO tbl_wish
VALUES (1, 3);
                  
-- QnA ���̺�
CREATE SEQUENCE qna_seq;

CREATE TABLE tbl_qna(q_code NUMBER NOT NULL PRIMARY KEY
                 , user_no NUMBER NOT NULL
                 , relation_qcode NUMBER
                 , type varchar2(20)
                 , title VARCHAR2(30)
                 , question VARCHAR2(1000) NOT NULL
                 , status NUMBER DEFAULT 1 NOT NULL
                 , q_date DATE DEFAULT SYSDATE NOT NULL);


-- ���� ���̺�
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
    rev_seq.NEXTVAL, 1, 2, '���ƿ�', '���� �����ؿ�!', 5, SYSDATE
);



SELECT * FROM tbl_user;
SELECT * FROM tbl_country;
SELECT * FROM tbl_qna;
SELECT * FROM tbl_product ORDER BY p_code;
SELECT * FROM tbl_review;
SELECT * FROM tbl_reservation;
SELECT * FROM tbl_wish;

select q_code, type, title, q_date, status
from tbl_qna
where title like '%����%';