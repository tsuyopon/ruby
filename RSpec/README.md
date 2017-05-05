# 概要
rspecの単体テスト実行方法とsimplecovによるカバレッジ取得方法について

rspecについては次にもまとめている
- https://github.com/tsuyopon/memo/blob/master/RUBY/rspec.md 

# 実行方法

simplecovでカバレッジを取得するためにspec/spec_helper.rb に次の行を追加している。
```
require 'simplecov' 
SimpleCov.start 'rails'
```

レポジトリ直下でrspecコマンドを実行すればrspecテストを実行してくれます。
ログにもカバレッジが生成されたことが表示されます。
```
$ bundle exec rspec spec/
...

Finished in 0.00715 seconds (files took 0.15525 seconds to load)
	3 examples, 0 failures

	Coverage report generated for RSpec to /home/tsuyoshi/git/ruby/RSpec/coverage. 7 / 7 LOC (100.0%) covered.
```

coverageディレクトリが生成されていることが確認できます。
```
$ ls coverage/
assets	index.html
```

# 参考URL
- http://qiita.com/luckypool/items/e3662170033347510c3c
