#
# 出力の簡単なサンプルです
#

print "Hello world1"      # printは改行しません
puts "Hello, world2"      # putsは改行します
puts("Hello, world3")
puts("Hello, ", "world4")
warn "this message outputs to stderr"   # warnは標準エラー出力に出力されます

# placeholder
puts "############### placeholder ###############"
str = "Azarashi"
puts("Hello #{str}!!")

# 配列
puts "############### ARRAY ###############"
puts [1, 2, 3]
pp [1, 2, 3]
p [1, 2, 3]

# JSON
puts "############### JSON ###############"
jsonstr = "{\"name\":\"goma\"}"
puts jsonstr # スラッシュ(/)が表示されません
p jsonstr
pp jsonstr

# ハッシュ
puts "############### HASH ###############"
hash = profile = { "last_name" => "goma",
          "first_name" => "fuwa",
          "age" => 5,
          "address" => "Saitama",
          "sex" => "male"}
puts hash
p hash
pp hash   # ppを使うとハッシュが見やすくなります
