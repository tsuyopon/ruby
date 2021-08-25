=begin
for文について

for文とeachの違いについて
- forではループ構文の内外で変数のスコープは変わらない！
- eachではブロックの内外でスコープが変わる！
=end


for i in 18...20 do
    p i
end

for color in ["red""blue"]
    p color
end


for name,score in {"taguchi":200,"endo":400}
    puts "#{name}:#{score}"
end


#################################
# forとeachの違いのサンプル
#################################
colors =["red","blue","yellow"]

## ここのcolorsはどこからでもアクセスできる。
for color in colors
    p "color:#{color}"
end

# ## ここのcはeachメソッド内でしか使えない。
colors.each do |c|
    p "color:#{c}"
end

