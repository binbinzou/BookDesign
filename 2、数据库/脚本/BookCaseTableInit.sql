-- ��SQL�Ǵ���BASE_BOOKCASE_LAYERINSIDESIZE��
-- ���ߣ��ޱ��
-- ʱ�䣺2017/5/6

-- ------------------------
-- BASE_BOOKCASE_LAYERINSIDESIZE    ͼ����ڲ��ֲ���
-- ------------------------
CREATE TABLE ��BASE_BOOKCASE_LAYERINSIDESIZE��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ�������',
	��LENGTH�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��񳤶�',
	��WIDE�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ�����', 
	��HEIGHT�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ���߶�',
	��BOOK_LENGHTLIMIT�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��������鱾����',
	��BOOK_WIDELIMIT�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��������鱾���', 
	��BOOK_HEIGHTLIMIT�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��������鱾�߶�',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ���״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��񴴽���ID',
	��ORG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��񴴽���������֯',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKCASE_TYPE   ͼ������� 
-- -----------------------
CREATE TABLE ��BASE_BOOKCASE_TYPE��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�����������',
	��BOX_COUNT�� int(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֿ����',
	��LENGTH�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ���ĳ���',
	��WIDE�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ���Ŀ��', 
	��HEIGHT�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ���ĸ߶�',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ������͵�״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������ʹ�����ID',
	��ORG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������ʹ�����������֯ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKCASE_TYPE_LAYERINSIDE   ͼ��������ڲ��ֲ�
-- -----------------------
CREATE TABLE ��BASE_BOOKCASE_TYPE_LAYERINSIDE��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOX_X�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�ֲ������ǰ�½ǵĳ��ȷ������',
	��BOX_Y�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�ֲ������ǰ�½ǵĿ�ȷ������',
	��BOX_Z�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�ֲ������ǰ�½ǵĸ߶ȷ������',
	��BOOKCASE_TYPE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������ID', 
	��BOOKCASE_LAYERINSIDESIZE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ���ID',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ㴴����ID',
	��ORG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ㴴����������֯ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKTYPE   ͼ�����
-- -----------------------
CREATE TABLE ��BASE_BOOKTYPE��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ���������',
	��PID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�����ĸ�ID',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ������״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�����Ĵ�����ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKCASE   ͼ���
-- -----------------------
CREATE TABLE ��COREDATA_BOOKCASE��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������',
	��LNG�� varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ��񾭶�',
	��LAT�� varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ���γ��',
	��PROVINCE�� varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������ʡ��', 
	��CITY�� varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ������ڳ���',
	��DISTRICT�� varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������������',
	��BOOKCASE_TYPE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����������',
	��BEGINUSE_TIME�� timestamp NULL DEFAULT NULL COMMENT 'ͼ�����Ӫʱ��',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ������״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������ʹ�����ID',
	��ORG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ�������ʹ�����������֯ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -----------------------
-- COREDATA_BOOKCASE_LAYERINSIDE   ͼ���ֲ�
-- -----------------------
CREATE TABLE ��COREDATA_BOOKCASE_LAYERINSIDE��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOX_X�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�ֲ������ǰ�½ǵĳ��ȷ������',
	��BOX_Y�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�ֲ������ǰ�½ǵĿ�ȷ������',
	��BOX_Z�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�ֲ������ǰ�½ǵĸ߶ȷ������',
	��BOOKCASE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ���ID', 
	��BOOKCASE_LAYERINSIDESIZE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ���ID',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ��״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ㴴����ID',
	��ORG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ͼ����ڲ��ֲ㴴����������֯ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKAUTHOR  ������Ϣ
-- -----------------------
CREATE TABLE ��BASE_BOOKAUTHOR��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������',
	��ANOTHER_NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '���߱���',
	��BIRTHDAY�� varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������',
	��PEN_NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '���߱���',
	��NATIONALITY�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '���߹���',
	��DESCRIPTION�� text COLLATE utf8_unicode_ci NOT NULL COMMENT '��������',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '������Ϣ״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '���ߵĴ�����ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOK_COMMONMSG  ����Ϣ
-- -----------------------
CREATE TABLE ��BASE_BOOK_COMMONMSG��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
	��ANOTHER_NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '�����',
	��AUTHOR_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '����ID',
	��TRANSLATOR_ID�� char(36) COLLATE utf8_unicode_ci NULL COMMENT '����ID',
	��BOOKTYPE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�����ID',
	��PAGE_CNT�� smallint(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ҳ��',
	��READ_OVERTIME�� smallint(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '�����Ķ�ʱ��',
	��BRIEFING�� text COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
	��CATALOG�� text COLLATE utf8_unicode_ci NOT NULL COMMENT '��Ŀ¼',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '������Ϣ״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '���ߵĴ�����ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- USERDATA_USER �û���Ϣ
-- -----------------------
CREATE TABLE ��USERDATA_USER��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��NAME�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '�û�����',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�û�״̬',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKMSG  �鱾��Ϣ
-- -----------------------
CREATE TABLE ��COREDATA_BOOKMSG��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��ONEDAY_PRIICE_UNOVERDUE�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'һ������(δ����)',
	��ONEDAY_PRIICE_OVERDUE�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'һ������(����)',
	��UNOVERDUE_MAXDAY�� int(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '��Ԥ�����ʱ��',
	��RE_NEWDAY�� int(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '����ʱ��',
	��DEPOSIT�� float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '����Ѻ��',
	��BOOK_COMMONMSG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������ϢID',
	��RENT_USERID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '���ID',
	��LEND_USERID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '������ID',
	��FIRST_BOOKCASE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�״�ͼ���ID',
	��REAL_BOOKCASE_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ʵʱͼ���ID',
	��BOOKLEND_ORDERID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '���鵥ID',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾��Ϣ״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾�Ĵ�����ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKDISPATCH  �������Ϣ
-- -----------------------
CREATE TABLE ��COREDATA_BOOKDISPATCH��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOOKCASE_FROMID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾����ԭͼ��� ',
	��BOOKCASE_TOID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾�����ֵ�ͼ���',
	��BOOKMSG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾��ϢID',
	��TYPE�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾��������',
	��MESSAGE�� varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '�������Ϣ',
	��PROPOSER�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '������',
	��CARRIER�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '������',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾���ȴ�����ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKCOMMENT  ������Ϣ
-- ----------------------- 
CREATE TABLE ��COREDATA_BOOKCOMMENT��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOOK_COMMONMSG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������ϢID',
	��CONTENT�� text COLLATE utf8_unicode_ci NOT NULL COMMENT '��������',
	��SCORE�� int(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '���۷���',
	��USEFULL_CNT�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�������õ�����',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '����������ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKLEND_ORDER  ���鵥��Ϣ
-- ----------------------- 
CREATE TABLE ��ORDERDATA_BOOKLEND_ORDER��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOOK_CNT�� int(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾����',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '���鵥������ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKBORROW_CAR  ���鳵��Ϣ
-- ----------------------- 
CREATE TABLE ��ORDERDATA_BOOKBORROW_CAR��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOOKMSG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾ID',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '���鳵���鱾��״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '���鳵������ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKBORROW_ORDER  ����������Ϣ
-- ----------------------- 
CREATE TABLE ��ORDERDATA_BOOKBORROW_ORDER��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOOK_CNT�� int(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾����',
	��TYPE�� smallint(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������(�ֻ�����ͼ������ɶ�ά��)',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '����״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������������ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKBORROW_ORDERDETAIL ����ϸ�ڵ���Ϣ
-- ----------------------- 
CREATE TABLE ��ORDERDATA_BOOKBORROW_ORDERDETAIL��(
	��ID�� char(36) COLLATE utf8_unicode_ci NOT NULL,
	��BOOKMSG_ID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�鱾ID',
	��BOOKBORROW_ORDERID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '��������ID',
	��BOOKCASE_FROMID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�����ID',
	��BOOKCASE_TOID�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '�����ID',
	��STATUS�� smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '����״̬',
	��CREATOR�� char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '����ϸ�ڵ�������ID',
	��CREATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	��UPDATE_TIME�� timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(��ID��)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

