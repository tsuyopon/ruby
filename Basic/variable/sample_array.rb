=begin
配列周りの便利操作について

参考: https://oshou.github.io/ruby-basic/
=end

# 配列の要素数を確認
p [].length         #=> 0
p [1,2,3].length    #=> 3
p [1,2,3].size      #=> 3

# 文字列への変換
ary = [64, "hoge", 100]
p ary.to_s

# 配列要素の中で最大値、最小値を求める
p [1,3,7,2,5].max   #=> 7
p [1,3,7,2,5].min   #=> 1

# 配列の先頭から削除、追加
p ary = [1,3,7,2,5]
p ary.shift               #=> 1               ※引数指定しない場合は、先頭から1文字取得&配列から除外
p ary                     #=> [3,7,2,5]
p ary.shift(2)            #=> [3,7]           ※引数指定する場合は、先頭から引数分だけ取得&配列から除外
p ary                     #=> [2,5]
p ary.unshift(1)          #=> [1,2,5]

# 配列の末尾から削除、追加
p ary = [1,3,7,2,5]
p ary.pop                 #=> 5               ※引数指定しない場合は、末尾から1文字取得&配列から除外
p ary                     #=> [1,3,7,2]
p ary.pop(2)              #=> [7,2]           ※引数指定する場合は、先頭から引数分だけ取得&配列から除外
p ary                     #=> [1,3]
p ary.push(8)             #=> [1,3,8]
p ary << 4                #=> [1,3,8,4]				※pushと同じ

# 配列が空かどうかの確認
p [].empty?      #=> true
p [1,2,3].empty? #=> false

# 配列要素の中で、指定した特定要素を含むか確認
p [1,2,3].include?(1)    #=> true
p [1,2,3].include?(10)   #=> false

# ランダムに要素取得
p [1,3,7,2,5].sample   #=> 5  ※結果は毎回ランダムで選ばれる。

# 配列の複製
ary1 = ["hoge", "fuga", "piyo"]
p ary2 = ary1.dup

## 指定した要素の削除
p ary = [0,1,2,3]
p ary.delete_at(2)      #=> 2
p ary                   #=> [0,1,3]
p ary.delete(3)         #=> 3
p ary
