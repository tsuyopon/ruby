#
# 文字列の基本的な扱い
#

# 文字列の結合
str1 = "Hello"
puts "str1:", str1 + " World"

# 繰り返し文字列の作成
str2 = "Hello "
puts "str2:", str2 * 5

# 文字列の追加
str3 = "Hello"
str3 << ", World"
puts "str3:", str3

# 文字列の削除
str4 = "Hello"
puts "str4:",  str4.delete("l")  # Heo

# 文字列を空にする
str5 = "Hello"
puts "str5:", str5.clear
