#
# forの簡単なサンプルプログラム
#

# 一次元配列
for i in [1, 2, 3]
  print i*2, "\n"
end


# 多次元配列
for i,j in [[1,2], [3,4], [5,6]]
  p [i,j]
end

# ハッシュ
drink = {:MILK => "牛乳",:COFEE => "コーヒー",:WATER => "水"}
for name_en,name_jp in drink do
	puts "key: #{name_en}, value:#{name_jp}"
end
