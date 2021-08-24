#
# ハッシュを利用する際のサンプルプログラム
#  => 記法(String)と :記法(Symbol)によってアクセス方法での出力が変わってくる点に注意すること
#

# 1行に記述
puts "Case1: String =>"
h1 = {"Red"=>1, "Blue"=>2, "Green"=>2}

# 要素へのアクセス(以下のアクセス方法は他のケースで実施しても同じです)
p h1[:Red]  # これで"Red"のkeyにアクセス可能
p h1['Red'] # これもアクセス可能
p h1["Red"] # ダブルクォートで囲われた場合はnilになるので注意!!

# 複数行で記述 ( => 記法)
p "Case2: String =>"
h2 = {
	"Red"=>1,
	"Blue"=>2,
	"Green"=>2,    # 最後にカンマがあってもエラーになりません。
}

# 複数行で記述 ( : 記法、keyは""で囲んでいる)
puts "Case3: Symbol :"
h3 = {
	"Red": 1,
	"Blue": 2,
	"Green": 2,
}

# 複数行で記述 ( : 記法、keyは""で囲んでいない)
puts "Case4: Symbol :"
h4 = {
	Red: 1,
	Blue: 2,
	Green: 2,
}

# keyを配列に変換する
p h1.keys    # ["Red", "Blue", "Green"]
p h2.keys    # ["Red", "Blue", "Green"]
p h3.keys    # [:Red, :Blue, :Green]
p h4.keys    # [:Red, :Blue, :Green]

# valueを配列に変換する
p h1.values  # [1, 2, 2]
p h2.values  # [1, 2, 2]
p h3.values  # [1, 2, 2]
p h4.values  # [1, 2, 2]

# keyとvalueのペアを配列に変換する
p h1.to_a    # [["Red", 1], ["Blue", 2], ["Green", 2]]
p h2.to_a    # [["Red", 1], ["Blue", 2], ["Green", 2]]
p h3.to_a    # [[:Red, 1], [:Blue, 2], [:Green, 2]]
p h4.to_a    # [[:Red, 1], [:Blue, 2], [:Green, 2]]

# keyをシングルクォート指定したアクセス
p h1['Red']  # 1
p h2['Red']  # 1
p h3['Red']  # nil
p h4['Red']  # nil

# keyを:記法で指定したアクセス
p h1[:Red]  # nil
p h2[:Red]  # nil
p h3[:Red]  # 1
p h4[:Red]  # 1

# =4記法で定義されている場合にはアクセスできず、:記法で定義されている場合にはアクセスできるようです。
puts "h1:Red color number is #{h1[:Red]}"   # nil
puts "h2:Red color number is #{h2[:Red]}"   # nil
puts "h3:Red color number is #{h3[:Red]}"   # 1
puts "h4:Red color number is #{h4[:Red]}"   # 1

# 同値比較
p h1 == h2   # true ( => 記法同士)
p h3 == h4   # true ( : 記法同士)
p h1 == h3   # false
p h1 == h4   # false
p h2 == h3   # false
p h2 == h4   # false
