# テーブル設計

## users テーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |

### Association
- has_many :phrases



## phrases テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| phrase              | string     | null: false                    |
| tag_id              | integer    | null: false                    |ActiveHash
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :tag
