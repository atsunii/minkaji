# 🏠 MinKaji
### 家庭内で'誰が''どんな'家事したのか共有ができる、家事をみんなで楽しく分担できたら良いなという思いから作成したアプリケーションです

![toppage](https://gyazo.com/7943d544689f8ab397e50ae58f22ca81)


# 💭 概要

### 家事は家族全員が分担するのが当たり前な時代。
### ポイント性にする事で家事を楽しんでして欲しい。

家事一つひとつにポイントを振り分け、個人の目標ポイント、全体の目標ポイントを設定し、誰か一人が負担を強いられることを無くす。家事を見える化する事で何が出来ていないかも確認する事ができる。

# 🌐  App URL
### **https://furima-32583.herokuapp.com/** 
![Image from Gyazo](https://i.gyazo.com/0033e79b6bd92896e1c7d110089ed57e.jpg)


# 💻  利用方法

#### `☆ トップページから新規登録・ログイン`
#### `☆ ログイン用メールアドレス :h@h  パスワード :hhh555`
#### `☆ 一覧画面へ遷移する`
#### `☆ 全体の獲得した家事ポイントを表示`
#### `☆ 個人が獲得済みのポイントを表示`<br>

#### `☆ ログイン → 家事を入力 → 新規家事入力画面へ`<br>
![Image from Gyazo](https://i.gyazo.com/db80162d26ceb0fefe2fe85c8098c762.gif)
<br>

#### `☆ 日付、行った家事、合計獲得ポイントを入力`<br>
![Image from Gyazo](https://i.gyazo.com/b0cf8271c8f515145c25acdfd753ea69.gif)
<br>

#### `☆ 獲得したポイントがTOPページへ反映される`<br>
![Image from Gyazo](https://i.gyazo.com/87148d36baaabfcdb2dfb613055ba921.gif)
<br>

#### `☆ ユーザー名 → 家事内容確認・内容編集・削除ができる<br>
![Image from Gyazo](https://i.gyazo.com/50865db3537008f87785128bb6cafa05.gif)
<br>

# 📦  機能一覧
| 機能           | 概要             |
| -------------- | -----------------|
| ユーザー管理機能 | 新規登録・ログイン・ログアウトが可能  |
| 投稿機能 | 家事投稿が可能 |
| 投稿詳細表示機能 | 各投稿詳細がマイページで閲覧可能 |
| 投稿編集・削除機能 | 投稿者本人のみ投稿編集・削除が可能 |
| 全体獲得ポイント表示機能 | 各ユーザーの獲得ポイントを自動計算して表示 |
| ユーザー詳細表示機能 | 各ユーザーの獲得ポイントが閲覧可能 |

# ✅ 追加したい機能
| 機能                                      | 詳細                                                                                                           |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| TOPページに進捗ゲージを表示させる             | 現在は獲得ポイントが数字で表示されているが、設定した目標ポイントまでどれだけ足りないかを一目でわかるような見た目にしたい |
| 家事内容をユーザーが設定できる                | 現在の仕様はあらかじめ、家事の選択肢やポイントが決められた状態だが、これらの選択肢やポイントをユーザーが編集できるような実装をしたい |
| まだできていない家事を見える化                | ユーザー自身が設定した家事の中でまだ達成できていない家事を一覧で表示したい |
| 月ごとにデータを管理できる                   | 実際の月が変わるタイミングで達成度がリセットされ、過去の内容も確認ができる |
| 目標ポイントが達成できたかどうかを見える化      | ユーザーが設定した全体の達成度・個人の達成度を月毎に見れる |

# 🚜 開発環境

- VScode
- Ruby 2.6.5
- Rails 6.0.0
- mysql2 0.4.4
- gem 3.0.3
- heroku 7.47.7
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
