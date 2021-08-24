#
# ハッシュを使った繰り返し処理
#

h1 = { 
	"Red"=>1,
	"Blue"=>2,
	"Green"=>2
}

# |key, value|と2つ指定した場合にはkeyとvalueにそれぞれが値として格納される
p "##### Case1: "
h1.each do | key, value |
	p "#{key}, #{value}"
end

# |keyvalue|と1つの引数しか指定しない場合には、keyvalueは配列としてkey, valueが格納される
p "##### Case2: h1"
h1.each do | keyvalue |
	key = keyvalue[0]
	value = keyvalue[1]
	p "#{key}, #{value}"
end

