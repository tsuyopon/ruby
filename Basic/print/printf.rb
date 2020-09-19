=begin
printf構文について

フォーマットの指定については以下の値を指定することができます。
   \r\n ：表示を改行させます。
   %幅d : 整数値を指定の桁数で右詰めにします。
   %-幅d ：整数値を指定の桁数で左詰めにします。
   %+幅d ：整数値を符号付きで表示します。
   %0幅d : 整数値の余った空白をゼロで埋めます。
   %幅.小数点以下桁数f ：小数点以下の桁数を指定しています。
   %幅s ：文字列を右詰めで表示します。
   %-幅s ：文字列を左詰めで表示します。

=end


# 数値を右詰めで表示します。
printf("%10d\r\n", 123) #=> "       123"

# 数値を左詰めで表示します。
printf("%-10d\r\n", 123) #=> "123       "

# 数値を符号付きで表示します。
printf("%+10d\r\n", 123) #=> "      +123"

# 数値を右詰めで表示し、余った空白をゼロで埋めて表示します。
printf("%010d\r\n", 123) #=> "0000000123"

# 小数点以下の桁数を指定して表示します。
printf("%10.3f\r\n", 123.4) #=> "   123.400"

# 文字列を右詰めで表示します。
printf("%10s\r\n", "abc") #=> "       abc"

# 文字列を左詰めで表示します。
printf("%-10s\r\n", "abc") #=> "abc       "

# 複数の値を渡して表示することができます。
printf("%3d is not %3s \r\n", 123, "abc") #=> "123 is not abc"
