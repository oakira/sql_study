--列の出力
select
	shohin_id,
	shohin_mei,
	shiire_tanka
from
	Shohin;

--テーブルの中身を確認する
select
	*
from
	classics;

--列の確認
describe classics;

--ユーザーの確認
select
	user,
	host
from
	mysql.user;

--列に別名をつける
select
	shohin_id as "商品ID",
	shohin_mei as "商品名",
	shiire_tanka as "仕入単価"
from
	Shohin;

--定数の出力
select
	'商品' as mojiretsu,
	38 as Kazu,
	'2009-02-24' as hizuke,
	shohin_id,
	shohin_mei
from
	Shohin;

/* 重複行を
 省く */
select
	distinct shohin_bunrui
from
	Shohin;

select
	distinct shiire_tanka
from
	Shohin;

select
	distinct shohin_bunrui,
	torokubi
from
	Shohin;

--列の選択
select
	shohin_mei,
	shohin_bunrui
from
	Shohin
where
	shohin_bunrui = "衣服";

select
	shohin_mei
from
	Shohin
where
	shohin_bunrui = "衣服";