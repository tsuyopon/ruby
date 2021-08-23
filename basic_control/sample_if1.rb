#
# if, elsif, else, endのサンプル + 三項演算子のサンプル
#
city = "Nagoya"

if city == "Tokyo" then
  print("東京")
elsif city == "Osaka" then
  print("大阪")
elsif city == "Nagoya" then
  print("名古屋")
else
  print("指定にはありません")
end

puts


# 三項演算子のサンプル
puts 10 == 5 ? 'trueならば実行される' : 'falseならば実行される'

