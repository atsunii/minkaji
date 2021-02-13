🌎 GlobalDay
SNS上の語学学校をイメージとした英語学習に特化したアプリケーション

# テーブル設計

## usersテーブル
|Column  |Type    |Options     |
|------  |----    |-------     |
|name    |string  |null: false |
|email   |string  |null: false |
|password|string  |null: false |

### Association
- has_many : house_works

## house_worksテーブル
|Column    |Type      |Options          |
|------    |----      |-------          |
|clean_id  |integer   |                 |
|towel_id  |integer   |                 |
|garbage_id|integer   |                 |
|score_id  |integer   |null_false       |
|date      |date      |null_false       |
|user_id   |references|foreign_key: true|

### Association
- belongs_to :user
