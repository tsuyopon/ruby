=begin
文字列を数値に変換するサンプル

to_i:int型に変換する。
to_f:float(浮動小数型)に変換する。

=end

#################################
# to_i
#################################
a=10
b="10"

if  a == b.to_i
    puts "true"
else
    puts "false"
end

#################################
# to_f
#################################
a=10 #数値
b="5" #文字列

p a+b.to_i 
p a+b.to_f 
