#!/usr/bin/ruby 

#
# インスタンスメソッドの簡単なサンプル
#


class User

  # 参考までに記載していますが、newするようなクラスメソッドでないとinitialize関数は呼ばれません。
  def initialize
    @description = "initialize"
  end

  # クラスには関連が深いが、インスタンスに含まれるデータは使わないメソッドを定義したい場合にはクラスメソッド(self.xxx)を定義する
  def self.description
    # #{self.name}は "taro"ではなく"User"トクラス名が表示されてしまう点に注意
    @name = "description"
    puts "class method called. class=#{self} self.name=#{self.name} name=#{@name}"
  end

  def self.description2
    puts "class method called. class=#{self} self.name=#{self.name} name=#{@name}"
  end
end

# クラスメソッドの呼び出し方法
User.description2
User.description
User.description2

