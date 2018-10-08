恋するプログラムのGUIを作ってみるためのリポジトリ

# メモ
- `bundle install`を実行すると`vendor/bundle`ディレクトリ内に`Gemfile`に記載したgemがインストールされる
  - （`.bundle/config`があるから）
- `ruby sample_app/myapp.rb`で起動
- `require "sinatra/reloader" if development?`でオートリロード
