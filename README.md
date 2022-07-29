# census-japan-2020

## What is this?

- 国勢調査2020のデータを使いやすいように加工して置いておきます
- あのデータも加工しておいてほしいのだけど、というのがあれば教えてください
- データソース
  - <https://www.e-stat.go.jp/gis/statmap-search?page=1&type=1&toukeiCode=00200521>

## directory description

* 01.download/dl-m5.sh
  * ダウンロードした素のデータをまとめます
  * データソースから5次メッシュのzipファイルをダウンロード
  * 解凍して文字コードをutf-8に変換
  * 改行コードをunixにして、一つのcsvファイルにまとめる
  * まとめたファイル以外を削除

* 02.addlatlng/script.py
  * 前述のまとめcsvより、メッシュコードから緯度経度(メッシュ中心点)を求めてcsvに追記したもの

* 出力のcsvは、githubに100MB以上のファイルを載せられない関係で、gzipしてます。利用にあたっては適宜解凍を。
