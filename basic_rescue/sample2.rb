=begin
例外のExceptionを表示する
=end

begin
  1 / 0
rescue => e
  puts "何か問題が発生しました。"
  p e
end
puts 'ok'
