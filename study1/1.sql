--mysql起動
mysql.server start
--mysql停止
mysql.server stop
--プロセスの確認・終了
ps aux | grep "mysql"
sudo kill pid
--初期設定
mysql_secure_installation
--mysql　パスなしログイン
mysql.server start --skip-grant-tables
--mysqlログイン
mysql -u root -p
--mysqlユーザー確認
select Host, User, Password from mysql.user;
--mysql セーフモードで起動
sudo mysqld_safe --skip-grant-tables &
--ユーザーの作成
create user 'user名'@'ホスト名' identified by 'パスワード';
--ユーザーの追加と権限付与
grant all on publications.* to 'xxxxxxxxx'@'localhost' identified by 'xxxxxxxxx';
grant all on publications.* to 'root'@'localhost' identified by 'Yd2#~yR4';
grant all on publications.* to 'akiraogawa'@'%' identified by 'Yd2#~yR4';
--無理やりユーザー追加()
INSERT INTO mysql.user SET user = 'root', host = 'localhost', password = Password('silversun0424');
DELETE FROM mysql.user WHERE user = 'root' AND host = 'localhost'; 
INSERT INTO mysql.user SET user = 'root',host = 'localhost', authentication_string=password('silversun0424'),Select_priv = 'y',Insert_priv = 'y',Update_priv = 'y',Delete_priv = 'y',Create_priv = 'y',Drop_priv = 'y',Reload_priv = 'y',Shutdown_priv = 'y',Process_priv = 'y',File_priv = 'y',Grant_priv = 'y',References_priv = 'y',Index_priv = 'y',Alter_priv = 'y',Show_db_priv = 'y',Super_priv = 'y',Create_tmp_table_priv = 'y',Lock_tables_priv = 'y',Execute_priv = 'y',Repl_slave_priv = 'y',Repl_client_priv = 'y',Create_view_priv = 'y',Show_view_priv = 'y',Create_routine_priv = 'y',Alter_routine_priv = 'y',Create_user_priv = 'y',Event_priv = 'y',Trigger_priv = 'y',Create_tablespace_priv = 'y';
--パスワードの設定
set password for 'ユーザー名'@'ホスト名' = password('パスワード');
set password for 'root'@'localhost' = password('silversun0424');
--ユーザーの削除
drop user 'user名'@'ホスト名 or IPアドレス';
--dbの作成
create database publicartions;
--dbを選択
use publications;
--データの追加
create table classics(author VARCHAR(128),title VARCHAR(128),type VARCHAR(16),year CHAR(4)) ENGINE MyISAM;
create table tablename (fieldname int unsigned);
create table tablename (fieldname int(4));
create table tablename (fieldname int(4) zerofill);
create table disposble(trash int);
--テーブルの中身を確認する
select * from classics;
--列の確認
describe classics;
--ユーザーの確認
select user, host from mysql.user;
--既存のテーブルへのIDの追加
alter table classics add id int unsigned not null auto_increment key;
--列の削除
alter table classics drop id;
--データ追加
insert into classics(author,title,type,year)values('マーク・トウェイン','トム・ソーヤの冒険','フィクション','1876');
insert into classics(author,title,type,year)values('ジェーン・オースティン','傲慢と偏見','フィクション','1811');
insert into classics(author,title,type,year)values('チャールズ・ダーウィン','種の起源','ノンフィクション','1856');
insert into classics(author,title,type,year)values('チャールズ・ディケンズ','骨董屋','フィクション','1841');
insert into classics(author,title,type,year)values('ウィリアム・シェイクスピア','ロミオとジュリエット','演劇','1594');
--テーブル内容の表示
select * from classics;
--テーブル名の変更
alter table classics rename pre1900;
--列の型変更
alter table classics modify year smallint;
--列の追加
alter table classics add pages smallint unsigned;
--列名の変更
alter table  classics change type category VARCHAR(16); 
--高速検索用のindexを追加する
alter table classics add index(author(20));
create index author on classics (author(20));
alter table classics add index(title(20));
alter table classics add index(category(4));
alter table classics add index(year);
--基本構文
--DDL
create
drop
alter
--DML
select
insert
update
delete
--DCL
commit
rollback
grant
revoke
