-- 本SQL是创建BASE_BOOKCASE_LAYERINSIDESIZE表、
-- 作者：邹斌斌
-- 时间：2017/5/6

-- ------------------------
-- BASE_BOOKCASE_LAYERINSIDESIZE    图书柜内部分层规格
-- ------------------------
CREATE TABLE ‘BASE_BOOKCASE_LAYERINSIDESIZE‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格名称',
	‘LENGTH‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格长度',
	‘WIDE‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格宽度', 
	‘HEIGHT‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格高度',
	‘BOOK_LENGHTLIMIT‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格限制书本长度',
	‘BOOK_WIDELIMIT‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格限制书本宽度', 
	‘BOOK_HEIGHTLIMIT‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格限制书本高度',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格创建者ID',
	‘ORG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格创建者所属组织',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKCASE_TYPE   图书柜类型 
-- -----------------------
CREATE TABLE ‘BASE_BOOKCASE_TYPE‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜类型名称',
	‘BOX_COUNT‘ int(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分块个数',
	‘LENGTH‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的长度',
	‘WIDE‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的宽度', 
	‘HEIGHT‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的高度',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜类型的状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的类型创建者ID',
	‘ORG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的类型创建者所属组织ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKCASE_TYPE_LAYERINSIDE   图书柜类型内部分层
-- -----------------------
CREATE TABLE ‘BASE_BOOKCASE_TYPE_LAYERINSIDE‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOX_X‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '分层距离左前下角的长度方向距离',
	‘BOX_Y‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '分层距离左前下角的宽度方向距离',
	‘BOX_Z‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '分层距离左前下角的高度方向距离',
	‘BOOKCASE_TYPE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜类型ID', 
	‘BOOKCASE_LAYERINSIDESIZE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格ID',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层的状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层创建者ID',
	‘ORG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层创建者所属组织ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKTYPE   图书类别
-- -----------------------
CREATE TABLE ‘BASE_BOOKTYPE‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书类别名称',
	‘PID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书类别的父ID',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书类别的状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书类别的创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKCASE   图书柜
-- -----------------------
CREATE TABLE ‘COREDATA_BOOKCASE‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜名称',
	‘LNG‘ varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜经度',
	‘LAT‘ varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜纬度',
	‘PROVINCE‘ varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜所在省份', 
	‘CITY‘ varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜所在城市',
	‘DISTRICT‘ varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜所在行政区',
	‘BOOKCASE_TYPE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜所属类别',
	‘BEGINUSE_TIME‘ timestamp NULL DEFAULT NULL COMMENT '图书柜运营时间',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书类别的状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的类型创建者ID',
	‘ORG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜的类型创建者所属组织ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -----------------------
-- COREDATA_BOOKCASE_LAYERINSIDE   图书柜分层
-- -----------------------
CREATE TABLE ‘COREDATA_BOOKCASE_LAYERINSIDE‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOX_X‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '分层距离左前下角的长度方向距离',
	‘BOX_Y‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '分层距离左前下角的宽度方向距离',
	‘BOX_Z‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '分层距离左前下角的高度方向距离',
	‘BOOKCASE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜ID', 
	‘BOOKCASE_LAYERINSIDESIZE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层规格ID',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层的状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层创建者ID',
	‘ORG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '图书柜内部分层创建者所属组织ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOKAUTHOR  作者信息
-- -----------------------
CREATE TABLE ‘BASE_BOOKAUTHOR‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者姓名',
	‘ANOTHER_NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者别名',
	‘BIRTHDAY‘ varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者生日',
	‘PEN_NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者笔名',
	‘NATIONALITY‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者国籍',
	‘DESCRIPTION‘ text COLLATE utf8_unicode_ci NOT NULL COMMENT '作者描述',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者信息状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者的创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- BASE_BOOK_COMMONMSG  书信息
-- -----------------------
CREATE TABLE ‘BASE_BOOK_COMMONMSG‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '书名',
	‘ANOTHER_NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '书别名',
	‘AUTHOR_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者ID',
	‘TRANSLATOR_ID‘ char(36) COLLATE utf8_unicode_ci NULL COMMENT '译者ID',
	‘BOOKTYPE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书类别ID',
	‘PAGE_CNT‘ smallint(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '页数',
	‘READ_OVERTIME‘ smallint(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '建议阅读时间',
	‘BRIEFING‘ text COLLATE utf8_unicode_ci NOT NULL COMMENT '书简介',
	‘CATALOG‘ text COLLATE utf8_unicode_ci NOT NULL COMMENT '书目录',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者信息状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者的创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- USERDATA_USER 用户信息
-- -----------------------
CREATE TABLE ‘USERDATA_USER‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘NAME‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名字',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户状态',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKMSG  书本信息
-- -----------------------
CREATE TABLE ‘COREDATA_BOOKMSG‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘ONEDAY_PRIICE_UNOVERDUE‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '一天的租金(未逾期)',
	‘ONEDAY_PRIICE_OVERDUE‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '一天的租金(逾期)',
	‘UNOVERDUE_MAXDAY‘ int(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '非预期最大时间',
	‘RE_NEWDAY‘ int(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '续借时间',
	‘DEPOSIT‘ float(6,2) COLLATE utf8_unicode_ci NOT NULL COMMENT '租书押金',
	‘BOOK_COMMONMSG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '所属书信息ID',
	‘RENT_USERID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '租客ID',
	‘LEND_USERID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书者ID',
	‘FIRST_BOOKCASE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '首次图书柜ID',
	‘REAL_BOOKCASE_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '实时图书柜ID',
	‘BOOKLEND_ORDERID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '租书单ID',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本信息状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本的创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKDISPATCH  书调度信息
-- -----------------------
CREATE TABLE ‘COREDATA_BOOKDISPATCH‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOOKCASE_FROMID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本调度原图书柜 ',
	‘BOOKCASE_TOID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本调度现的图书柜',
	‘BOOKMSG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本信息ID',
	‘TYPE‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本调度类型',
	‘MESSAGE‘ varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '书调度信息',
	‘PROPOSER‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '申请人',
	‘CARRIER‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '调度人',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本调度创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- COREDATA_BOOKCOMMENT  书评信息
-- ----------------------- 
CREATE TABLE ‘COREDATA_BOOKCOMMENT‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOOK_COMMONMSG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '所属书信息ID',
	‘CONTENT‘ text COLLATE utf8_unicode_ci NOT NULL COMMENT '评论内容',
	‘SCORE‘ int(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '评论分数',
	‘USEFULL_CNT‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '评论有用的数量',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书评创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKLEND_ORDER  租书单信息
-- ----------------------- 
CREATE TABLE ‘ORDERDATA_BOOKLEND_ORDER‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOOK_CNT‘ int(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本数量',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '租书单创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKBORROW_CAR  借书车信息
-- ----------------------- 
CREATE TABLE ‘ORDERDATA_BOOKBORROW_CAR‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOOKMSG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本ID',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书车中书本的状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书车创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKBORROW_ORDER  借书主单信息
-- ----------------------- 
CREATE TABLE ‘ORDERDATA_BOOKBORROW_ORDER‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOOK_CNT‘ int(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本数量',
	‘TYPE‘ smallint(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书类型(手机或者图书柜生成二维码)',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '订单状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书主单创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------
-- ORDERDATA_BOOKBORROW_ORDERDETAIL 借书细节单信息
-- ----------------------- 
CREATE TABLE ‘ORDERDATA_BOOKBORROW_ORDERDETAIL‘(
	‘ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL,
	‘BOOKMSG_ID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '书本ID',
	‘BOOKBORROW_ORDERID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书主单ID',
	‘BOOKCASE_FROMID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书柜ID',
	‘BOOKCASE_TOID‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '还书柜ID',
	‘STATUS‘ smallint(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '订单状态',
	‘CREATOR‘ char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '借书细节单创建者ID',
	‘CREATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	‘UPDATE_TIME‘ timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(‘ID‘)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

