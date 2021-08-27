#
# 文字列の判定関数
#

# 文字列が空かどうかを調べる
str1 = "Hello"
puts "str1:",  str1.empty?   # false

# 文字列が指定した文字で始まっているかどうかを調べる
str2 = "hoge, fuga"
puts "str2:", str2.start_with?("hoge") # true

# 文字列が指定した文字で終わっているかどうかを調べる
str3 = "hoge, fuga"
puts "str3:", str3.end_with?("hoge") # false

# 文字列中に特定の文字列が含まれるかを確認する
str4 = "https://news.yahoo.co.jp/pickup/6402822"
puts "str4:", str4.include?("pickup") # true

# 部分文字列の位置のindexを調べる
str5 = "hoge, fuga"
puts "str5:", str5.index("g")       # 2      はじめから探索して3番目(2+1)にある
puts "str5:", str5.index("g", 4)    # 8      5番目(4+1)から探索して9番目(8+1)にある

# 末尾から部分文字列の位置のindexを調べる
str6 = "hoge, fuga"
puts "str6:", str6.rindex("g")       # 8      末尾から探索して最初のgの値
puts "str6:", str6.rindex("g", 1)    # 8      末尾の2文字目(1+1)から探索

# 文字列比較判定
str7_1 = "hoge"
str7_2 = "moge"
puts "str7:", str7_1 == str7_2       # false

# 文字列を辞書の順番で比較
str8_1 = "hot"
str8_2 = "hotter"
str8_3 = "hottest"
puts "str8:", str8_1 < str8_2       # true 
puts "str8:", str8_1 < str8_3       # true
puts "str8:", str8_1 <= str8_2      # true

# 文字列の順番の比較
str9 = "HOGE"
puts "str9:", "hoge" <=> str9          # 1
puts "str9:", "HOGE1" <=> str9         # 1
puts "str9:", "HOG" <=> str9           # -1

# <=>とは違い大文字小文字を比較しない文字列の順番の比較
str10 = "HOGE"
puts "str10:", "hoge".casecmp(str10)   # 0
puts "str10:", "HOGE1".casecmp(str10)  # 1
puts "str10:", "HOG".casecmp(str10)    # -1

