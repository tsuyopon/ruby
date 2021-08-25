#
# ()を省略すべきか、省略しないべきか
#


puts('Hello')
puts 'Hello'

puts(["hoge", "fuga", "piyo"])
puts ["hoge", "fuga", "piyo"]

# 第1引数にハッシュが来る場合には()は省略できない。()が省略されると、{}がブロックと解釈されてしまうため
puts({'hoge' => true, 'fuga' => false})
#puts {'hoge' => true, 'fuga' => false}   # 実行エラーになりあmす

# 第２引数にハッシュが来る場合には()は省略できる
puts "moge", {'hoge' => true, 'fuga' => false}
