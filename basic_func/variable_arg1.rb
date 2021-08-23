#
# 可変長引数のサンプルプログラムです
#

def func(*args)
  # argsは配列
  args
end

p func(1, 2)
p func(1, 2, 3, 4, 5, 6)
