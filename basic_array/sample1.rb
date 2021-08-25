#
# 配列の宣言
#


# 配列の型を出力する
p [].class

#rubyでは配列の最後の要素に,が付与されていてもエラーになならない
arr1 = [1, 2, 3,]   
p arr1
p arr1.size
p arr1.length   # lengthはsizeのエイリアス

# 文字列と数値の混在も可能
arr2 = ["str1", "str2", "str3", 1, 2, 3]
p arr2

# 多次元配列
arr3 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p arr3


