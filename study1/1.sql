--列の確認
describe classics
--ユーザーの確認
select user, host from mysql.user;
--既存のテーブルへのIDの追加
alter table classics add id int unsigned not null auto_increment key;
--列の削除
alter table classics drop id;
--データ追加
insert into classics(autor,title,type,year)
values()