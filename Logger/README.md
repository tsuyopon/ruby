# 概要
rubyのログについて
付属のLoggerライブラリを使うことによって次のようにいろいろなことができそうなので独自ログも不要そう。
- ログレベルで指定したものだけ出力する
- 日付フォーマットなども独自で設定可能
- ファイルの新規か追加書き込みなどを指定可能
- 特定の容量や日、週、月単位などでろぐのローテートが可能

# 使い方概要
様々な使い方があるので詳細は参考URLのドキュメントを参考のこと

## 出力先指定

### 出力先指定
次のようにして出力先を指定することができます。
```
logger = Logger.new(STDERR)
logger = Logger.new(STDOUT)
logger = Logger.new('logfile.log')
```

### 上書きかAPPENDかを指定する。
```
file = File.open('foo.log', File::WRONLY | File::APPEND)
```

### 指定ファイルサイズに達したらログを切り替える
```
# 約1,024,000バイトの"古い"ログファイルを10個残す
logger = Logger.new('foo.log', 10, 1024000)
```

### ログファイルの切り替えを日毎か、週毎か、月毎かを指定する。
```
logger = Logger.new('foo.log', 'daily')
logger = Logger.new('foo.log', 'weekly')
logger = Logger.new('foo.log', 'monthly')
```

## ログレベルを設定する
INFO以上のログレベルしか出力したくない場合には次の設定をします。
```
log.level=Logger::INFO
```

このライブラリのログレベルの概念は次のようにUNKNOWNが一番レベルが高いです。
```
DEBUG < INFO < WARN < ERROR < FATAL < UNKNOWN
```

## 日付フォーマットの変更
```
log.datetime_format = '%Y-%m-%d %H:%M:%S'
```

## ログを出力する
```
logger.fatal { "Argument 'foo' not given." }
logger.error "Argument #{@foo} mismatch."
logger.info('initialize') { "Initializing..." }
logger.add(Logger::FATAL) { 'Fatal error!' }
logger.debug { "This is a " + potentially + " expensive operation" }
logger.debug("This is a " + potentially + " expensive operation")
```

### 特殊変数
- [PARAM] logdev:
  - ログを書き込むファイル名か、 IO オブジェクト(STDOUT, STDERR など)を指定します。
- [PARAM] shift_age:
  - ログファイルを保持する数か、ログファイルを切り替える頻度を指定します。 頻度には daily, weekly, monthly を文字列で指定することができます。 省略すると、ログの保存先を切り替えません。
- [PARAM] shift_size:
  - shift_age を整数で指定した場合のみ有効です。 このサイズでログファイルを切り替えます。
- [PARAM] level:
  - ログに記録する時のログレベルを指定します。省略した場合は Logger::Severity::DEBUG です。
- [PARAM] progname:
  - ログに記録する時のプログラム名を指定します。省略した場合は nil です。
- [PARAM] formatter:
  - ログに記録する時のログのフォーマッタを指定します。 省略した場合は Logger::Formatter インスタンスです。
- [PARAM] datetime_format:
  - ログに記録する時の日時のフォーマットを指定します。 省略した場合は '%Y-%m-%d %H:%M:%S' です。
- [PARAM] shift_period_suffix:
  - daily、weekly、monthlyでログファイルの切り替 えを行う時のログファイルの名の末尾に追加する 文字列のフォーマットを指定します。 省略した場合は '%Y%m%d' です。

- SeeAlso
  - https://docs.ruby-lang.org/ja/latest/class/Logger.html

### msg, severity, message, prognameの引数について
固定文字列として上記引数が登場してくる場合がありますが、以下の意味があります。
- msg: ログに出力するメッセージ。
- severity: ログレベル。Logger クラスで定義されている定数を指定します。 この値がレシーバーに設定されているレベルよりも低い場合、 メッセージは記録されません。
- message: ログに出力するメッセージを文字列か例外オブジェクトを指定します。 省略すると nil が用いられます。
- progname: ログメッセージと一緒に記録するプログラム名を指定します。 省略すると nil が使用されますが、実際には内部で保持されている値が使用されます。


# 参考URL
- https://docs.ruby-lang.org/ja/latest/class/Logger.html
