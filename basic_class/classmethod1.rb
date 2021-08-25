#!/usr/bin/ruby 

#
# クラスメソッドのサンプル
#


class User

  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def my_name
    "My name is #{self.name}.  Hello #{@name}"
  end

end

# インスタンスメソッドからの呼び出し
user = User.new("taro")
p user.my_name
