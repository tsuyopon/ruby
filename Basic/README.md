# 概要
rubyの基本文法について

requireが不要な本体に組み込まれているライブラリは以下を参考のこと
- https://docs.ruby-lang.org/ja/2.7.0/library/\_builtin.html

# 最速文法

### 出力
```
p       
puts    # 改行あり
printf  # 改行なし
```


### インスタンス変数とクラス変数

```
@variable:  インスタンス変数
@@variable: クラス変数
```

### グローバル変数
以下の様に$を付与するとどこからでも参照・設定可能なグローバル変数となる。
```
$global
```

### 定数
大文字のsnake_case
```
EXAMPLE_CONSTANT
```

### コメント

シャープ#で行のコメントを表す。
複数行の場合には
```
=begin
ここにコメントを
記述する
=end
```


### %記法には様々な記法がある。
ダブルクォート、バッククォート、シングルクォートなどを表す。

### クラスのnew
newすると必ずinitializeメソッドが呼ばれる。(定義しないことも可能)

### クラスのsetter, getterを考慮した際のアクセスメソッドは次の3つがある
```
attr_reader #rede（読む）
attr_writer #write（書く）
attr_accessor #access(読むと書くの両方)
```

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



# 参考URL
rubyの基本文法はまず以下のURLをチェックすると良い
- https://oshou.github.io/ruby-basic/
- https://qiita.com/oshou/items/b7873c67cf22b5e8b42f
- https://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59

