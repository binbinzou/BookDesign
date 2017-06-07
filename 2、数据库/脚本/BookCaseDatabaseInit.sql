--创建数据库
create schema bookcase default character set utf8 collate utf8_general_ci;
--创建用户
create user 'bookcase'@'%' identified by 'bookcase';
--用户授权数据库
grant select,insert,update,delete,create on bookcase.* to bookcase;
--立即启用修改
flush  privileges ;