# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

has many: orders

## products テーブル

| Column | Type    | Options     |
| ------ | ------- | ----------- |
| name   | string  | null: false |
| price  | integer | null: false |

has many: orders

## orders テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| product   | references | null: false, foreign_key: true |

belongs_to: user
belongs_to: product