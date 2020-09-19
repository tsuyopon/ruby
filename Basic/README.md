# 概要
rubyの基本文法について

requireが不要な本体に組み込まれているライブラリは以下を参考のこと
- https://docs.ruby-lang.org/ja/2.7.0/library/_builtin.html

# 抑えておくべきこと

### クラス、モジュール名

CamelCase。各単語の最初は大文字とする。\_は使わない。
例外としてHTTPやXML等の大文字の固有名詞はそのまま表す。
```
例) ◯ ExampleClass、HTTPClient
例) × Example_class、Exampleclass、HttpClient
```

### メソッド名
```
英小文字のsnake_case。
例) ◯ add_something
例) × addSomething、Add_something
```

### 真偽を表す場合は、動詞または形容詞に?をつける。形容詞にis\_はつけない。
```
例) ◯ visible?
例) × is_visible、is_visible?
```


### 破壊的なメソッドを表す場合は、末尾に!を付ける。
```
例) split  #非破壊的メソッド
例) split! #破壊的メソッド
```

### 「末尾に!がつくメソッドは破壊的メソッド」だが「!がなければ破壊的メソッドではない」わけではない。間違えやすいので要注意。
```
例)concat等
!付きでない破壊的なメソッドは以下参考
```

### 定数
大文字のsnake_case
```
EXAMPLE_CONSTANT
```


# 参考URL
rubyの基本文法はまず以下のURLをチェックすると良い
- https://qiita.com/oshou/items/b7873c67cf22b5e8b42f

