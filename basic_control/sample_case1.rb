#
# case文の簡単なサンプルプログラム
#
sum = 0
product = "Apple"

case product
when "Lemon" then
  sum = sum + 500
when "Apple" then
  sum = sum + 150
when "Melon","Banana" then   # 複数指定することも可能
  sum = sum + 500
end

print("fee: #{sum}")
