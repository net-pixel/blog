# README

## What is this
![Blog-Mainpage](https://user-images.githubusercontent.com/62044473/89700104-83d6b780-d966-11ea-87fe-48745f9eeb8b.png)
このアプリはブログサイトもしくはポートフォリオサイトとして活用できるアプリです。自分で作成したコンテンツを写真つきでアップロードし見てもらうことが目的です。

## What can be done
このアプリでできることは..

* 一般ユーザー
- メインページ表示
- 記事の閲覧
- ユーザー登録
- タイトル・記事内容に含まれる文字からの検索機能
- タグによる記事検索
- 管理者紹介ベージの閲覧

* 管理者 / Admin
- 管理者でのログイン機能
- Action Textを用いた記事の作成
- 管理者による記事の編集
- 管理者による記事の削除
- タグ付け

## Language Flamework
このアプリは下記の言語とフレームワークを使用しています。

- Ruby
- Ruby on rails
- JavaScript
- Json
- jQuery
- Haml
- Scss
- Bootstrap

## Further development?
コメント機能など必要に応じて追加する予定です。

## Details
ここからは機能の詳細について説明

### MainPage
ブログのメインページです。最新の記事が一番上に画像と共に表示されます。
各記事には画像、タイトル、作成日、記事内容、タグ（管理者は編集と削除ボタン）が表示されます。
また、記事が多くなると複数ページを作成します。
各記事及びフッターにはタグがあり、各タグを押下すると関連する記事の一覧を表示できます。

![Blog-Mainpage](https://user-images.githubusercontent.com/62044473/89700104-83d6b780-d966-11ea-87fe-48745f9eeb8b.png)
![Blog-ResMainpage](https://user-images.githubusercontent.com/62044473/89700193-2bec8080-d967-11ea-85e3-9998c3117ea9.png)
![Blog-Footer](https://user-images.githubusercontent.com/62044473/89700335-54c14580-d968-11ea-885c-23211ac523bb.png)


### Navigation bar
![Blog-ResNavigation](https://user-images.githubusercontent.com/62044473/89700210-69e9a480-d967-11ea-8a97-8b6715374873.png)
ナビゲーションバーではタイトル、検索ページ、紹介ページ、ユーザー登録及びログインページへのボタンを配置しています。

### ArticlePage
![Blog-Articlepage](https://user-images.githubusercontent.com/62044473/89700220-84238280-d967-11ea-901a-8ea6852df6c8.png)
![Blog-ResArticle](https://user-images.githubusercontent.com/62044473/89700229-9ac9d980-d967-11ea-9498-5bcf26ba69fa.png)
記事のページでは記事の詳細を閲覧することができます。

### Search & Tag Search
![Blog-Search](https://user-images.githubusercontent.com/62044473/89700248-d8c6fd80-d967-11ea-8cf6-8a64806e5711.png)
![Blog-ResSearch](https://user-images.githubusercontent.com/62044473/89700249-de244800-d967-11ea-9fda-4725383f573e.png)
![Blog-TagSearch](https://user-images.githubusercontent.com/62044473/89700252-e11f3880-d967-11ea-9e33-05fb4d05fd49.png)
![Blog-ResTagSearch](https://user-images.githubusercontent.com/62044473/89700253-e3819280-d967-11ea-9793-57183e1866dd.png)
検索はLIke?検索とタグの選択による関連タグの検索ができます。
検索機能ではタイトル及び記事の関連ワードをタイプするとタイプした文字がタイトル及び記事に含まれる記事を検索することができます。
タグ検索では各記事につけられているタグを選択するとタグのついた記事を表示させることができます。

### AboutPage
![Blog-Aboutpage](https://user-images.githubusercontent.com/62044473/89700236-b503b780-d967-11ea-99d4-eb9f63d7c1d1.png)
![Blog-ResAboutpage](https://user-images.githubusercontent.com/62044473/89700239-baf99880-d967-11ea-9bee-c327233cd3c4.png)
Aboutページでは作成者の紹介を閲覧することができます。
記事のページ

