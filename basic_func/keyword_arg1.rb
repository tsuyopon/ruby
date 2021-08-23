#
# キーワード引数のサンプルプログラム
# 

def func(name:, age:)
  "name:#{name}, age:#{age}"
end

# キーワード引数の場合には引数が入れ替わっても問題がない
p func(name: "azarashi", age: 3)
p func(age: 5, name: "goma")
