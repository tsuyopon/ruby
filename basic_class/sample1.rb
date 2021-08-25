#!/usr/bin/ruby 

#
# インスタンスメソッドとクラスメソッドを混合しているサンプル
#


# rubyのクラス名は大文字で開始しなければらなない
class User

  # インスタンス変数を直接変更して操作ができるようにするもの。
  # attr_accessorによって@nameを読み書きするためのメソッドが自動的に定義されます。
  attr_accessor :name

  # attr_readerによってインスタンス変数 @read_nameを読み取り専用としてメソッドが自動的に定義されます。
  attr_reader :read_name

  # attr_writerによってインスタンス変数 @write_nameを書き込み専用としてメソッドが自動的に定義されます。
  attr_writer :write_name

  # newした際に呼ばれる
  def initialize(name)
    self.name = name

    # attr_readerで定義されている場合にはself.read_nameで書き込みはエラーになるので、@read_nameに代入を行う。なお、参照はself.read_nameで可能です。
    @read_name = "READ:"+name
    p self.read_name

    # attr_writerで定義されているのでself.write_nameで書き込み可能。参照はself.write_nameではなく、@write_nameにしないとエラーとなる
    self.write_name = "WRITE:"+name
    p @write_name


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
p user.read_name

# nameのクラス変数はattr_accessorを定義しているので、インスタンス変数が外部からの編集・参照が可能となる
user.name = "hoge"
p user.name

# クラスメソッドの呼び出し
User.description
