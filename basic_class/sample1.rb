#!/usr/bin/ruby 

=begin
クラスの簡単なサンプル
=end


# rubyのクラス名は大文字で開始しなければらなない
class User

  # インスタンス変数を直接変更して操作ができるようにするもの。
  attr_accessor :name

  # newした際に呼ばれる
  def initialize(name)
    self.name = name
  end

  def my_name
    "My name is #{self.name}."
  end

  # クラスメソッド(self.xxxで定義しているので)
  def self.description
    puts "class method called. class=#{self}"
  end
end

# インスタンスメソッド
user = User.new("taro")
p user.my_name

# nameのクラス変数はattr_accessorを定義しているので、インスタンス変数が外部からの編集・参照が可能となる
user.name = "hoge"
p user.name

# クラスメソッドの呼び出し
User.description
