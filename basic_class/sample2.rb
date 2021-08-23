#!/usr/bin/ruby 

=begin
インスタンス変数、クラス変数、定数を理解するためのサンプル
=end


class Var

  # 大文字で定義されているのは定数
  CONST_VAR = 1

  # @で定義されているものはインスタンス変数(インスタンス毎に値を持つ)  (*)
  #   注意: インスタンス変数はここでは初期化できていないことに注意(実行時にエラーにはならない)。
  #         初期化するにはinitializeやメソッド内で実施する。この例ではinitialize_instancevarで初期化しています
  @instance_var =  100

  # @@で定義されているものはクラス変数(全インスタンス共通)
  @@class_var = 10000

  # (*)の箇所ではインスタンス変数は初期化できていない。インスタンス変数はメソッド内での初期化が必要となる。
  def initialize_instancevar
    @instance_var = 100
  end

  # 定数を出力
  def print_const
    puts CONST_VAR
  end

  # インスタンス変数を出力
  def print_instancevar
    puts @instance_var
  end

  # クラス変数を出力
  def print_classvar
    puts @@class_var
  end

  # 値のインクリメントを行う
  def increment_instancevar
    @instance_var = @instance_var + 1
  end

  def increment_classvar
    @@class_var = @@class_var + 1
  end

end

# 定数は クラス::定数名 で呼び出すことができる
p Var::CONST_VAR

puts "### var1 output ###"
var1 = Var.new()
var1.print_classvar      # この時点ではnilであることに注意(つまり、User Var直下の@@instance_varは意味をなしていない)
var1.print_instancevar

# ここでインスタンス変数を初期化
var1.initialize_instancevar

puts "### var1 output after initialize instance ###"
var1.print_classvar
var1.print_instancevar

# インスタンス変数とクラス変数を1インクリメント
var1.increment_instancevar
var1.increment_classvar

puts "### var2 output ###"
var2 = Var.new()
var2.print_classvar       # クラス変数はvar1と共有できていることを確認
var2.print_instancevar    # インスタンス変数はvar1共有できていない。ここでは初期化していないのでnilとなる
