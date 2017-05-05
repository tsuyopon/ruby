#!/usr/bin/env ruby
 
require 'logger'
 
# 出力先ディレクトリを指定します。
log = Logger.new('/tmp/rubylog')
 
log.debug('debug')
log.info('info')
log.warn('warn')
log.error('error')
log.fatal('fatal')
log.unknown('='*80)

puts "SET LOGLEVEL INTO Logger:INFO"
log.datetime_format = '%Y-%m-%d %H:%M:%S'
log.level=Logger::INFO
log.debug('debug')
log.info('info')
log.warn('warn')
log.error('error')
log.fatal('fatal')
log.unknown('='*80)

puts "SET LOGLEVEL INTO Logger:FATAL"
log.formatter = proc do |severity, datetime, progname, msg|
  "[#{datetime}]: #{msg}\n"
end
log.level=Logger::FATAL
log.debug('debug')
log.info('info')
log.warn('warn')
log.error('error')
log.fatal("fatal #{__FILE__} #{__LINE__}")
log.unknown('+'*80)

log.close

puts "Output to /tmp/rubylog"

