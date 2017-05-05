class Dog

   # コンストラクタ(インスタンスメソッドだけ呼ばれるはず...)
   def initialize
      puts "start"
   end

   # インスタンスメソッド
   def ihoge
      puts "ihoge"
   end

   # クラスメソッド
   def self.ihoge
      puts "self.ihoge"
   end
end


#インスタンスメソッド
dog = Dog.new
dog.ihoge

#クラスメソッド
Dog.ihoge
