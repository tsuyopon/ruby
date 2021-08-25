=begin
Rubyで一定の間隔で数値を増やす繰り返し処理をしたいことがあります。
=end

# 2.4から始まり、0.8刻みで、5.3になるまで、加算します。
2.4.step(5.3, 0.8){|num|
  print("num = ", num, "\n")
}

# １からはじまり、１０を越えない値まで2ずつ加算されていきます。
1.step(10, 2) do |x|
  puts x
end

# マイナス方向へのskipも可能です。
0.step(-0.5, -0.1) do |x|
  printf "%.1f ", x
  puts
end


# 2016年4月3日から始まり、1日ずつ、5+1日分表示します。
require 'date'
t = Date.new(2016, 4, 3)
t.step(t + 5, 1) do |day|
  puts day
end


# byで一定間隔を指定し、toで該当の数値までを指定する
3.step(by:2, to:10){|n| p n}
