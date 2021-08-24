/*
 * ハッシュを利用する際のサンプルプログラム
 */
# 1行に記述
puts "Case1"
h1 = {"Red"=>1, "Blue"=>2, "Green"=>2}
p h1.keys   # keyを配列に変換する
p h1.values # valueを配列に変換する
p h1.to_a   # keyとvalueのペアを配列に変換する

# 要素へのアクセス(以下のアクセス方法は他のケースで実施しても同じです)
p h1[:Red]  # これで"Red"のkeyにアクセス可能
p h1["Red"] # これはnilになるので注意
puts "Red color number is #{h1[:Red]}"

# 複数行で記述 ( => 記法)
p "Case2 =>"
h2 = {
	"Red"=>1,
	"Blue"=>2,
	"Green"=>2
}
p h2.keys

# 複数行で記述 ( : 記法、keyは""で囲んでいる)
puts "Case3 =>"
h3 = {
	"Red": 1,
	"Blue": 2,
	"Green": 2
}
p h3.keys

# 複数行で記述 ( : 記法、keyは""で囲んでいない)
puts "Case4 =>"
h4 = {
	Red: 1,
	Blue: 2,
	Green: 2
}
p h4.keys
