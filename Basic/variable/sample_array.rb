=begin
配列周りの便利操作について

参考: https://oshou.github.io/ruby-basic/
=end

# 配列の要素数を確認
p [].length         #=> 0
p [1,2,3].length    #=> 3
p [1,2,3].size      #=> 3
p [3,2,10].sort     #=> [2, 3, 10]
p [3,2,10].reverse  #=> [10, 3, 2]
p [1,-2,3,4,-5].sort_by{|x| x.abs} #=> [1, -2, 3, 4, -5]
p [1,-2,3,4,-5].collect{|x| x.abs} #=> [1, 2, 3, 4, 5]        collectの別名はmapがあります。

# 文字列への変換
ary = [64, "hoge", 100]
p ary.to_s

# 配列要素の中で最大値、最小値を求める
p [1,3,7,2,5].max   #=> 7
p [1,3,7,2,5].min   #=> 1
p [1,-2,3,4,-5].max_by{|x| x.abs}  #=> -5
p [1,-2,3,4,-5].min_by{|x| x.abs}  #=> 1

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

# 条件に合う・合わないものを選択する・調べる
p [1,2,3,4,5].select{|x| x.even?}  #=> [2,4]      selectは別名find_allが存在します。
p [1,2,3,4,5].reject{|x| x.even?}  #=> [1,3,5]    rejectは別名delete_ifが存在します。
p [1,2,3,4,5].detect{|x| x.even?}  #=> 2          最初にマッチしたものを表示する。detectは別名findが存在します。
p [1,2,3,4,5].member?(3)           #=> true       指定した値にマッチするかどうかを調べます。member?は別名include?が存在します。
p [1,2,3,4,5].any?{|x| x.even?}    #=> true       条件に合うものがあるかどうかを調べる
p [1,2,3,4,5].all?{|x| x.even?}    #=> false      全ての要素が条件に当てはまるかどうかを調べる
p [1,2,3,4,5].count{|x| x.even?}   #=> 2          条件にあった要素の数を表示する

