--table追加
create table Shohin (
	shohin_id CHAR(4) NOT NULL,
	shohin_mei VARCHAR(100) NOT NULL,
	shohin_bunrui VARCHAR(32) NOT NULL,
	hanbai_tabka INTEGER,
	shiire_tanka INTEGER,
	torokubi DATE,
	PRIMARY KEY (shohin_id)
);

--table削除
drop table Shohin: --tableの定義の変更
--列を追加
alter table
	Shohin
add
	column shohin_mei_kana VARCHAR(100);

--列を削除
alter table
	Shohin drop column shohin_mei_kana;

--DMLデータ登録
-- begin transaction; --postgres
start transaction;

insert into
	Shohin
values
	('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

insert into
	Shohin
values
	('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');

insert into
	Shohin
values
	('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);

insert into
	Shohin
values
	('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');

insert into
	Shohin
values
	(
		'0005',
		'圧力鍋',
		'キッチン用品',
		6000,
		5000,
		'2009-01-15'
	);

insert into
	Shohin
values
	(
		'0006',
		'フォーク',
		'キッチン用品',
		500,
		NULL,
		'2009-09-20'
	);

insert into
	Shohin
values
	(
		'0007',
		'おろしがね',
		'キッチン用品',
		880,
		790,
		'2008-04-28'
	);

insert into
	Shohin
values
	('0008', 'ボールペン', '事務用品', 100, NULL, '2009-01-11');

--table名の変更
-- alter table Sohin rename to Shohin; --postgres
rename table Sohin to Shohin;

--table作成
create table Jyushoroku(
	toroku_bango INTEGER NOT NULL,
	namae VARCHAR(128) NOT NULL,
	jyusho VARCHAR(256) NOT NULL,
	tel_no CHAR(10),
	mail_adress CHAR(20)
);

--table add primarykey
alter table
	Jyushoroku
add
	PRIMARY KEY(toroku_bango);

alter table
	Jyushoroku
add
	column yubin_bango CHAR(8) NOT NULL;