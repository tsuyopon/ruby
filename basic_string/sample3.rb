#
# 非常に基礎的な文字列の扱いについて
#

# 文字列の置き換え
str1 ="ABC"
puts "str1:", str1.tr("A","a") #Aをaに置き換える．

# 部分文字列の抜き出し
str2="0123456789"
puts "str2:",str2.slice(1,3)  # 123   2から4番目を抜き出す．
puts "str2:",str2.slice(5)    # 5     6番目を抜き出す．

# 文字列の結合
str3="abc"
puts "str3:",str3.concat("def")

# 文字列の長さを取得
str4="123456789"
puts "str4 size:",str4.size
puts "str4 length:",str4.length

# 文字列中の特定の文字数を抽出する
str5="aaabbc"
puts "str5:", str5.count("a")     #   3    aの数を表示する

# 文字列への挿入
str6="0123456789"
puts "str6:", str6.insert(3,"x") # 012x3456789   先頭から数えて3番目の後に"x"を挿入

# 1文字ずつ区切って配列に代入する
str7="abcd"
pp "str7:", str7.chars         # ["a", "b", "c", "d"]

# 配列に格納された文字列を結合する
str8 = ["h", "o", "g", "e"]
puts "str8:", str8.join         # hoge

# 区切り文字を指定して文字列を配列として返す
str9 = "https://news.yahoo.co.jp/pickup/6402822"
pp "str9:", str9.split('/')      # ["https:", "", "news.yahoo.co.jp", "pickup", "6402822"] /で分割する((要素に指定した/は含まれない)
pp "str9:", str9.partition('/')  # ["https:", "/", "/news.yahoo.co.jp/pickup/6402822"]     指定した部分文字列で文字列の先頭から分割したい場合(要素に指定した/も含まれる)
pp "str9:", str9.rpartition('/') # ["https://news.yahoo.co.jp/pickup", "/", "6402822"]     指定した部分文字列で文字列の末尾から分割したい場合(要素に指定した/も含まれる)

# 文字列中に特定の文字列が含まれるかを確認する
str10 = "https://news.yahoo.co.jp/pickup/6402822"
puts "str10:", str10.include?("pickup") # true

# 文字列の文頭と文末の空白削除する
str11 = "  hoge  \r\n"
puts "str11:", str11.strip      # hoge  (改行も削除されているはず)

# 正規表現のパターンにマッチした文字列の全置換。
str12 = "communication.com.com"
puts "str12 gsub:",str12.gsub!(/com/, 'jp')   # jpmunication.jp.jp      パターンに該当する全てを置換する
str13 = "communication.com.com"
puts "str13 sub:",str13.sub!(/com/, 'jp')     # jpmunication.com.com    パターンに該当する1つだけを置換する



## 数値を2進数の文字列に変換する
#str100=3
#puts "str100:",str100.to_s(2)   # 11
#
#
## 次の文字列の生成(succ, nextは同じ)
#s = "abc"
#puts s.succ
#puts s.next
#
#s = "abc123"
#puts s.succ
#puts s.next

