# census-japan-2020

## What is this?

- 国勢調査2020のデータを使いやすいように加工して置いておきます
  - githubに100MB以上のファイルを載せられない関係で、gzipしてます。利用にあたっては適宜解凍を。
  - 複数ファイルを一つのcsvにまとめました → 01.downloadフォルダ参照
  - 5次メッシュ番号から求めたメッシュ中心の緯度経度情報を付加しました → 02.addlatlangフォルダ参照
  - 5次メッシュ番号から求めたポリゴン形状をWKTとして付加しました -> 03.addpolygonフォルダ参照
- あのデータも加工しておいてほしいのだけど、というのがあれば教えてください
- データソース
  - <https://www.e-stat.go.jp/gis/statmap-search?page=1&type=1&toukeiCode=00200521>
  - 各カラム名が表すものは、上記リンク先の定義書を参照のこと

## 処理内容メモ

* 01.download/dl-m5-yyyy.sh
  * データソースからyyyy年国勢調査5次メッシュのzipファイルをダウンロードします
  * 各ファイルを解凍して文字コードをutf-8に変換
  * 改行コードをunixにして、一つのcsvファイルにまとめる
  * まとめたファイル以外を削除

* 02.addlatlng/script.py
  * 01.downloadでまとめたcsvより、5次メッシュコードから緯度経度(メッシュ中心点)を求めてcsvに追記したものを作成

* 03.addpolygon/script.py
  * 01.downloadでまとめたcsvより、5次メッシュのポリゴンをWKTで追記したものを作成
