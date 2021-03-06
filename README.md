# FURIMAアプリ

# ユーザーが商品の出品・購入を行うことができるアプリです.  

pay.jpを導入した購入機能あり。


<img width="800" alt="スクリーンショット 2021-04-12 22 20 10" src="https://user-images.githubusercontent.com/69971834/114400806-4b663800-9bdd-11eb-89b1-45bf1cd326ed.png">  
  
・リンク：<https://furima-29329.herokuapp.com/>

# Basic認証
* ID admin
* pass 2222

# 購入者アカウント
* email sample@sample.com
* pass sample1
* card 4242424242424242
* 利用期限 3/24
* セキュリティコード 123

# 出品者アカウント
* email sample2@sample.com
* pass sample2

# 利用方法

* トップの新規登録ボタンからユーザー登録をします
* 出品ボタンから商品の出品ができます
* 購入したい商品をクリックし購入画面で購入ができます

# 目指した課題解決
* 商品購入者が、商品について気になる点を気軽に質問できるようにコメント機能を実装しました

# 要件定義
* ユーザー登録機能 ユーザーが新規登録できる
* 商品出品機能 ユーザーが商品の出品できる
* 商品購入機能 ユーザーが商品の購入できる
* コメント機能 ユーザーが商品にコメントできる

# こだわり
・新規アカウント登録ページのビュー  
<img width="800" alt="スクリーンショット 2021-04-12 22 21 25" src="https://user-images.githubusercontent.com/69971834/114400989-78b2e600-9bdd-11eb-933b-fa0b27df357f.png">  
・購入時の売り切れ表示  
<img width="800" alt="スクリーンショット 2021-04-12 22 23 19" src="https://user-images.githubusercontent.com/69971834/114401263-b748a080-9bdd-11eb-83ef-84e10b542790.png">

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| explanation            | text       | null: false                    |
| category_id            | integer    | null: false                    |
| status_id              | integer    | null: false                    |
| shipping_charge_id     | integer    | null: false                    |
| shipping_region_id     | integer    | null: false                    |
| days_until_shipping_id | integer    | null: false                    |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## orders テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| item            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :shipping

## shippings テーブル

| Column           | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefecture       | integer    | null: false                    |
| city             | string     | null: false                    |
| house_number     | string     | null: false                    |
| building_name    | string     |                                |
| phone_number     | integer    | null: false                    |
| order            | references | null: false, foreign_key: true |

### Association

- belongs_to :order



* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
