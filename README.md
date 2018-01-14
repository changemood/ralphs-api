# README

## バージョン
* Ruby version 2.4.0
* Rails version 5.1.4

## DB
* postgresql
 
## 環境構築手順
1. repositoryをクローン  
  `$ git clone https://github.com/changemood/ralphs-api`

2. Ruby, Rails, bundlerをインストール  
  Ruby: [rbenvを使ってRubyをインストール](https://dev.classmethod.jp/server-side/language/build-ruby-environment-by-rbenv/)  
        [rvmを使ってRubyをインストール(高橋はコチラ)](https://qiita.com/yukofeb/items/6cad3a6de48dab60889b)  
   Rails: [http://installrails.com/steps/choose_os_version](http://installrails.com/steps/choose_os_version)  
   bundler: `$ gem install bundler`

3. Gemのインストール  
`$ bundle install`

4. DB構築  
`$ rake db:create db:migrate`

5. rails app を起動  
`$ rails s` 