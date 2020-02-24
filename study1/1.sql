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
--ユーザーの追加と権限付与
grant all on publications.* to 'xxxxxxxxx'@'localhost' identified by 'xxxxxxxxx';
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

