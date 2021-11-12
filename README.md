# アプリケーション名

hs-portfolio

# アプリケーション概要

写真家のポートフォリオ

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



