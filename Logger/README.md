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

# 参考URL
- https://docs.ruby-lang.org/ja/latest/library/logger.html

