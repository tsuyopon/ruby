=begin

p, puts, printメソッドについてまとめておく

メソッド名      ダブルクォーテーション       改行
-------------------------------------------------------
pメソッド                あり                あり
putsメソッド             なし                あり
printメソッド            なし                なし
=end


str = "hoge"

# p
p "hello world(p)"
p "name: %s"  % "taro"


# puts
puts                  # 引数が指定されない場合、改行を行う
puts "hello world"    # 改行がある
puts "hoge", "huga"   # 1行ずつ表示する
puts '%4d-%02d-%02d' % [2020, 10, 20]


# printf
printf('Line: %d says %s', 100, 'hello')


# sprintf
p sprintf("明日、%sの最高気温は%d度です。","埼玉",33)


# print
print  "hello world!" # 終わった後に改行がない

