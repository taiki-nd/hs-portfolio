# アプリケーション名

hs-portfolio

# URL
http://shio-web.jp/

# アプリケーション概要

写真家のポートフォリオ

## アプリ作成に関して

カメラワークが趣味の友人からwebサイト作成の依頼を受けました。
zoomを利用してwebサイトを確認しつつ作成を進めていきました。

## 実装項目

* 投稿機能
* 投稿編集機能
* 投稿削除機能
* 右クリック不可機能（投稿画像の保護のため）

## 今後の実装方針

* seo対策
* 記事投稿機能
* 動画投稿機能

# テーブル設計

## user テーブル

| Column             | Type       | Options                  |
| ------------------ | ---------- | ------------------------ |
| name               | string     | null: false              |
| email              | string     | null: false, unique:true |
| encrypted_password | string     | null: false              |
| admin              | boolean    | default: false           |

## post テーブル 

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| category_id      | integer    | null: false                    |
| model_name       | string     | null: false                    |
| model_url        | string     | null: false                    |
| text             | text       | null: false                    |
| user             | references | null: false, foreign_key: true |



