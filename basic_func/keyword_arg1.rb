#
# キーワード引数のサンプルプログラム
# 

# キーワード引数を使用する
def func(name:, age:)
  "name:#{name}, age:#{age}"
end

# ageが指定されない場合にはデフォルト値を使用する
def func2(name:, age: 10)
  "name:#{name}, age:#{age}"
end

# キーワード引数の場合には引数が入れ替わっても問題がない
p func(name: "azarashi", age: 3)
p func(age: 5, name: "goma")

p func2(name: "baikaru")
