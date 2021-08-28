#
# 定義されたprivateメソッドのサブクラスからの呼び出しとオーバーロード
#

class User

   # ここから下に定義されたメソッドはprivate
   private 

   def name
      'I am private User'
   end

   def pochi
      'I am private Pochi'
   end

end


class SubUser < User
  def to_s
    "name: #{name}"
  end

  # User.pochiをオーバーライドすることができる
  def pochi
     'I am SubUser Pochi'
  end
end


subuser = SubUser.new

# to_sでは内部でprivateメソッドを呼び出しているがエラーにはならない
p subuser.to_s

# SubUserクラスでUserクラスのprivateメソッドpochiをオーバーライドしたpochiを呼び出します
p subuser.pochi
