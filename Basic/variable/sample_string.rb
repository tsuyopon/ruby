=begin
文字列周りの処理について
参考: https://oshou.github.io/ruby-basic/
=end

# 文字列連結
str1 = "string1"
str2 = "string2"
p str1+str2
p "#{str1} def"

p ["aaa", "bbb", "ccc"].join(",")

# 文字列末尾追加
str1 << str2
str1.concat(str2)
p str1

# 文字列の一部抽出
p "abcde"[0]           #=> a
p "abcde"[0,3]         #=> abc      ※index0から3文字目まで

# 末尾改行文字を除外（特定文字の除外も可能）
str = "hoge\n"
p str.chomp

str = "hoge:"
p str.chomp(":") #:で改行する場合

# 文字列置換（正規表現で指定した条件を抽出）
str = "atatat"
p str.gsub(/at/,"@")   #gsubは該当する全ての要素を置換する(atatatなら@@@に変換)

str = "atatat"
p str.sub(/at/,"@")    #subは最初の要素だけ置換する(atatatなら@atatに変換)

# 大文字、小文字変換
p "abcde".upcase       #=> "ABCDE"
p "ABCDE".downcase     #=> "abcde

# 指定した文字列を含んでいれば、その開始位置を返す、存在しなければnilを返す
p "abcde".index("a")   # index=0
p "abcde".index("c")   # index=2
p "abcde".index("abc") # index=0
p "abcde".index("z")   # index=nil

# 指定文字列で文字列全体を分割、配列にする
p "Alice Bob Charlie".split(" ")   #=> ["Alice", "Bob", "Charlie" ]
p "Alice,Bob,Charlie".split(",")   #=> ["Alice", "Bob", "Charlie" ]

# 空文字列かどうかを判定する
p "".empty?            # true
p "a".empty?           # false

# 指定した文字列を含んでいるか確認
p "abcde".include?("bc")   #=> true
p "abcde".include?("zy")   #=> false

# 文字列反転
p "abcde".reverse      #=>"edcba"

# 文字数の取得
p "abcdef".length
p "abcdef".size        # sizeとlengthは実は同じ
