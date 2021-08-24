#
# ハッシュを使った同値比較
#

h1 = { 
	"Red"=>1,
	"Blue"=>2,
	"Green"=>2,
}

# h1と内容は同じだが順番だけ違う
h2 = { 
	"Red"=>1,
	"Green"=>2,
	"Blue"=>2,
}


h3 = { 
	"Red"=>1,
	"Blue"=>2,
}

# key, valueの値が全て同じなら並び順が異なっていてもtrue
p h1 == h2  # true

# 要素数が異なるのでfalse 
p h1 == h3  # false

# keyまたはvalueが異なる場合にはfalseとなる
h2['Blue'] = 3
p h1 == h2 # false

