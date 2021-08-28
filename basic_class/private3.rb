#
# 後からメソッドレベルを公開する場合
#

class User

  def hello
    'Hello'
  end

  def hello2
    'Hello2'
  end

  def hello3
    'Hello3'
  end

  def hello4(a)
    "Hello4 #{a}"
  end

  # hello2とhello3をprivateメソッドに変更する (hello4のように引数を渡した場合には、この方法では公開レベルは変更されない)
  private :hello2, :hello3

  # これはpublic
  def hello5
    'Hello5'
  end

end


user = User.new
p user.hello
p user.hello4("aaa")
p user.hello5

# 以下はprivateのために実行するとエラーになる
#p user.hello2
#p user.hello3
