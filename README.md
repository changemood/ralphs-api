# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# バージョン
* Ruby version 2.4.0
* Rails version 5.1.4

# DB
* postgresql
 
# 環境構築手順
1. repositoryをクローン  
  `$ git clone https://github.com/changemood/ralphs-api`

2. Ruby, Rails, bundlerをインストール  
   Ruby: [https://dev.classmethod.jp/server-side/language/build-ruby-environment-by-rbenv/](https://dev.classmethod.jp/server-side/language/build-ruby-environment-by-rbenv/)  
   Rails: [http://installrails.com/steps/choose_os_version](http://installrails.com/steps/choose_os_version)
   bundler: `$ gem install bundler`

3. Gemのインストール  
`$ bundle install`

4. DB構築  
`$ rake db:create db:migrate`

5. rails app を起動  
`$ rails s` 