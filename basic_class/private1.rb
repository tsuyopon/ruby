#
# メソッドの公開レベル(privateについて)
# 

class User

   # 何も指定しないデフォルトはpublic扱い
   def public_hello
      p 'public Hello'
   end

   # privateで定義されたメソッドxxxは、同一クラス内でもself.xxxでは呼び出せません(エラー)が、xxxで呼び出せます。
   # これはprivateメソッドは「レシーバを指定して呼び出すことができないメソッドのため」
   def call_private_hello
      p 'call_private_hello start'
      p private_hello
      p 'call_private_hello end'
   end

   def call_private_hello_from_self
      p 'call_private_hello_from_self start'
      p self.private_hello
      p 'call_private_hello_from_self end'
   end

   # ここから下に定義されたメソッドはprivate
   private 

   def private_hello 
      p 'private Hello'
   end
end


user = User.new
user.public_hello

# privateのため、外部から呼び出そうとすると以下のエラーが表示される
#      private method `private_hello' called for #<User:0x00007fe990117318> (NoMethodError)
#p user.private_hello

user.call_private_hello

# これはメソッド内部でself付きでprivateメソッドを呼び出しているのでエラーになります
#p user.call_private_hello_from_self
