=begin
eachを使ったサンプルです

forとeachの違いについてはfor.rbを確認すること
=end

####################################
# each
####################################

# range
(18..20).each do |i|
    p i
end


# 配列
["red","blue"].each do |color|
    p color
end


# ハッシュ
{taguchi:200,end:400}.each do |name,score|
    puts "#{name}: #{score}"
end


####################################
# each_slice
####################################
# 「二個ずつループを回したい！」や「二個ずつずらしてループを回したい」のような場合に使います。

[1,2,3,4].each_slice(2) do |num|
  p num
end

####################################
# each_cons
####################################
# 次に[1,2],[2,3],[3,4]という風に、二個ずつずらしてループを回す方法
[101, 102, 103, 104].each_cons(2) do |num|
  p num
end

####################################
# each_with_index
####################################
# eachで回すとインデックスを取ることはできません。そのため、インデックスを取りたい時はeach_with_indexメソッドを使用する必要があります。

[201,202,203,204].each_with_index do |num, i|
  p num, i
end
