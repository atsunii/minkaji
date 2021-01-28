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
|clean_id  |integer   |null: false      |
|towel_id  |integer   |null: false      |
|garbage_id|integer   |null: false      |
|user_id   |references|foreign_key: true|

### Association
- belongs_to :user
