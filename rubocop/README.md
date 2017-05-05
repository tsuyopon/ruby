# 概要
次のファイルにルールを準備します。
- 「守るべきルール」である.rubocop.yml
- 「今後直すべき違反」である.rubocop_todo.yml

# 実行

カレントディレクトリ配下の.rbファイルをすべてチェックしてくれるようだ
```
$ bundle exec rubocop
```

現在ルールにマッチしないものを除外するためのファイル.rubocop_todo.ymlをコードから自動生成する
```
$ rubocop --auto-gen-config
```

次には守るべきルールを記述する
```
.rubocop.yml
```

# 参考URL
https://github.com/tsuyopon/memo/blob/master/RUBY/Rubocop.md
