# クソコードレビュー大会専用コード!
### 目的
- このチームのエンジニアリングの能力を確かめる  
- 他の人がどんなことに気をつけてコーディングを行なっているのかを共有する。  
- 他人が書いたコードを見る練習をする。  
- みんなでスキルアップできたらいいな！  

## 前提
- ruby 2.5.0  
- rails 5.2.2  

テーブル構造は以下の通りです！  
![テーブル構造](erd.pdf)  

## 要件
| No | 機能 |
|:------:|:------:|
| 1 | ユーザーログイン機能 |
| 2 | 記事投稿・編集・削除機能 |
| 3 | 記事をジャンルごとに検索する機能 |

・ユーザーが記事を投稿して、それを一覧で見ることができる  
・記事は作者自身のみが記事を編集・削除できる  
・記事は公開・非公開を変更できる  
・またユーザーは自分自身を削除することもできる  
・記事はジャンルごとに見ることができる  
・ログインしていないユーザーは記事を見ることもできない  
・論理削除は不要  
・デザインに関しては完全に無視  

## 今回見たいところ
・インデントなどの基本的なコーディングの仕方（フォーマット）に気を配れるか？  
・railsで最もよく使うログインようのgemのdeviseの基本メソッドについて理解しているか？  
・セマンティックなコーディングを考えることができるか？  
・より高速な処理を意識してコーディングを行うことができるか？  
・最低限のセキュリティーの知見があるか？（というかここはみんなで勉強してこ！俺もまだまだ初心者笑）  

## railsで初期に入っているgem以外で追加したもの
日本語化のためのgem  
- gem 'i18n'  

enumのバリューを日本語化するgem    
- gem 'enum_help'  

ログイン機能を作成するgem  
- gem 'devise'  

railsのデバッグ用のgem  
- gem 'pry-rails'  

er図を自動で出力するgem  
- gem 'rails-erd'  

## 事前準備
```git clone git@github.com:takehanKosuke/bad_cord_test_of_rails.git```  
↑のコマンドを叩いてコードをクローンしてください  

```
git pull origin master  
git checkout -b 自分の名前
```
↑のコマンドを叩いてブランチを切ってください  
(「自分の名前」と書いてあるところはそれぞれ自分の名前をローマ字で入力してください)  
```
git branch
```
と打ってみて、「*自分の名前」  
となっていれば恐らく大丈夫です。不安な人は聞いてください

その後
```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
rails s
```
上記を実行し
```http://localhost:3000/```
にアクセスしてログイン画面がでれば準備完了です  

テスト用のuser名とパスワードは
```
メアド：test1@test.com  
パスワード：111111
```
です！

## ルール

修正するディレクトリは  

| No | ディレクトリ名 |
|:------:|:------:|
| 1 | controllers/articles_controller.rb |
| 2 | controllers/users_controller.rb |
| 3 | models/article.rb |
| 4 | models/user.rb |
| 5 | views/articles　以下の全てのファイル |
| 6 | views/layouts　以下の全てのファイル |
| 7 | views/users/show |
| 8 | db/seed.rb|

です！  
もしこれ以外のファイルでも修正できるところがあれば修正してもらっても構いません

### 制限時間は３０〜６０分  
（みんなの終わり方次第で調整しますw）
基本的には何を見てもらっても構わないですし、実際に動かして見てバグを発見するのもオッケーです！  
仕様について質問があれば適宜質問してください！  

また今回新たにgemを追加しての実装は基本的には認めませんw  
```ransack``` とかは特にダメですw  
（これで察しの良い方は気づきます）

以上！

## 提出方法
コードの提出方法は、プルリクを作成する形で提出してください
