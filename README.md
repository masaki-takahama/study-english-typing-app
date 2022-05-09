# アプリケーション名
## Studying English By Typing <br>

タイピングで英語を勉強しよう  <br><br>

# アプリケーション概要
## 英語学習のためのタイピングアプリ <br>
自由に英語フレーズを（日本語訳や画像も一緒に紐づけて）投稿でき、それらをタイピングできます。<br>
投稿された英語フレーズを読み上げる機能もついているので、目、指、耳で多感覚的に英語を学べます。  <br><br>

# URL
https://study-english-typing-app.herokuapp.com/
<br><br>

# テスト用アカウント <br>
BASIC認証 ID： admin<br>
BASIC認証 パスワード： 2222<br>
メールアドレス： food@food.com<br>
パスワード： food1111<br><br>

# 利用方法
まずはユーザー登録しログインして頂きます。<br>
ログインしたユーザーは自由に投稿ができ、自身が投稿したフレーズをタイピングできます。<br>
英語を多感覚的に覚えるためのアプリのため、英語フレーズだけでなく<br>
[日本語訳]、[イメージ画像]、[関連タグ]も入力しないと投稿できません。<br>
タイピング機能はログインしなくてもプレイでき、英字をタイピングしながら、日本語訳を見て、画像でフレーズに付随するイメージも定着できます。<br>更に読み上げ機能もあるので、シャドーイングも可能です。<br>覚えたい英語フレーズを目、指、耳、口を使って多感覚的に復習できます。<br><br>

# アプリケーションを作成した背景<br>
自分自身が、プログラミングの勉強と並行して英語学習もしたいと考えていたことが一番の背景です。<br>
言語学習は文字だけを見るより、書いたり、聞いたり、読み上げたり、または画像を見て自然に言葉を連想できるように、イメージを紐づかせて覚えることが効果的と言われているため、それらの機能を持たせたアプリの開発を目指しました。<br>
また、同時にタイピング力を向上させたい思いもありましたので、英語学習とタイピングゲームを掛け合わせたアプリを作成しようと思いました。<br>
完璧なアプリを作ることは期間的にも技術的にも難しいと考え、投稿型のアプリにすることにより、ユーザーたちで作り育てていくアプリに致しました。<br>
それ故、みんなで育てて我が子のように愛着を持ってもらうことも意識しましたのでデザインも愛嬌のあるデザインに致しております。<br><br>

# 洗い出した要件<br>
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1ddXoUQ62rqZVYuqK46-Mq1wuysre7pKEqbIovpVTUFI/edit#gid=982722306)<br><br>

# 実装した機能についての画像やGIFおよびその説明<br>
## TOPページ
[![Image from Gyazo](https://i.gyazo.com/942ab95cc3b68852303bf7e5159a9ba6.jpg)](https://gyazo.com/942ab95cc3b68852303bf7e5159a9ba6)<br>
## 投稿の様子
[![Image from Gyazo](https://i.gyazo.com/a99145938074ee7f5faa6c2ab1df2f26.gif)](https://gyazo.com/a99145938074ee7f5faa6c2ab1df2f26)<br>
## 投稿したものをタイピングできます。
実際にプレイすると音声読み上げ機能も体験できます。<br>
[![Image from Gyazo](https://i.gyazo.com/e1a901d055e4b797a9197303c334a91a.gif)](https://gyazo.com/e1a901d055e4b797a9197303c334a91a)<br>
## クリアすると次の問題に非同期で切り替わります。
残りの問題数もカウントダウンします。<br>
[![Image from Gyazo](https://i.gyazo.com/ce8def956729a936b5cc584ad76896f8.gif)](https://gyazo.com/ce8def956729a936b5cc584ad76896f8)<br>
## 全問クリアすると成績を表示します。
[![Image from Gyazo](https://i.gyazo.com/c93a63bb5159c688a94d0b2adf9e577b.jpg)](https://gyazo.com/c93a63bb5159c688a94d0b2adf9e577b)


# 開発環境<br>
HTML , CSS , JavaScript , Ruby , Ruby on rails<br><br>

# 工夫したポイント<br>
ペルソナが自分自身のため、自分が欲しい機能の実現を目指しました。<br>
システム的にはシンプルな構造ではありますが、その他のタイピングアプリ(寿司打など)と違い、ユーザーが投稿したフレーズをタイピングするため、Ruby on Railsのアクティブストレージで投稿した画像の表示をJavaScriptで非同期で切り替えることが一番工夫したポイントです。<br>
また『勉強』というイメージより『遊び』『ゲーム』『楽しい』という気持ちで学習してほしかったので（私自身もそうしたかったので)、見た目の可愛さもこだわって作りました。<br><br>

# 実装予定の機能<br>
### タグ別ルーム設定
##### 同一タグのフレーズのみを表示させるルームの設定を実装予定です。<br><br>
### 問題数の選択機能の設定
##### 今後、投稿数が増えると全ての問題をクリアすることが困難になるため、ユーザーに問題数を設定してプレイしてもらう機能を実装予定です。<br><br>
### 投稿したフレーズの編集、削除機能
##### 現状投稿したフレーズの編集削除は直接DBからしかできないため、投稿者本人が投稿したフレーズの編集削除をする機能を実装予定です。<br><br>

# テーブル設計<br>

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
