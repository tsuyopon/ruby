#!/usr/bin/env ruby
 
require 'logger'
 
# 出力先ディレクトリを指定します。
log = Logger.new('/tmp/rubylog')
 
# ログには次の6種類あります
log.debug('debug')
log.info('info')
log.warn('warn')
log.error('error')
log.fatal('fatal')
log.unknown('='*80)

# ログの時刻フォーマットを変更する
puts "SET LOGLEVEL INTO Logger:INFO"
log.datetime_format = '%Y-%m-%d %H:%M:%S'
log.level=Logger::INFO
log.debug('debug')
log.info('info')
log.warn('warn')
log.error('error')
log.fatal('fatal')
log.unknown('='*80)


# ログのフォーマットを変更します。
puts "SET LOGLEVEL INTO Logger:FATAL"
log.formatter = proc do |_severity, datetime, _progname, msg|   # 使っていない変数はprefixにアンダーバーを付与する
  "[#{datetime}]: #{msg}\n"
end

# FATAL以上のみ出力します
log.level=Logger::FATAL
log.debug('debug')
log.info('info')
log.warn('warn')
log.error('error')
log.fatal("fatal #{__FILE__} #{__LINE__}")
log.unknown('+'*80)

log.close

puts "Output to /tmp/rubylog"

