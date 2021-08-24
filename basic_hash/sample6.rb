#
# ハッシュを使った繰り返し処理(do |xxx| ~ end)
#
# =>記法(String)と:記法(Symbol)ともに記述しているが、出力としての違いは存在しない
#

# => 記法のハッシュ
h1 = {
	"Red"=>1,
	"Blue"=>2,
	"Green"=>2
}

# : 記法のハッシュ
h2 = {
	Red: 1,
	Blue: 2,
	Green: 2
}


# sample1.rbの例とは異なり、h1とh2で出力の違いはない

# |key, value|と2つ指定した場合にはkeyとvalueにそれぞれが値として格納される
p "##### Case1: h1"
h1.each do | key, value |
	p "#{key}, #{value}"
end

p "##### Case1: h2"
h2.each do | key, value |
	p "#{key}, #{value}"
end

# |keyvalue|と1つの引数しか指定しない場合には、keyvalueは配列としてkey, valueが格納される
p "##### Case2: h1"
h1.each do | keyvalue |
	key = keyvalue[0]
	value = keyvalue[1]
	p "#{key}, #{value}"
end

p "##### Case2: h2"
h2.each do | keyvalue |
	key = keyvalue[0]
	value = keyvalue[1]
	p "#{key}, #{value}"
end


