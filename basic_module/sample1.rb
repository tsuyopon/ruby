# moduleの使い方について
# Reference: https://qiita.com/shiopon01/items/fd6803f792398c5219cd


# 1. 定数として利用する
p "1. Use as constant"
module ModConstant
  Version = "2.3.0"
end
p ModConstant::Version #=> "2.3.0"


# 2. インスタンスメソッドとして利用する
p "2. Use as instance method"
module ModInstanceMethod
  def hello
    puts 'Hello'
  end

  module_function :hello
end
ModInstanceMethod.hello #=> "Hello"


# 3. クラスメソッド
# module内で呼び出されたクラスメソッド(selfから始まる)は、includeやextendで拡張したクラスから呼び出すことはできませんが、クラスと同様にしてmoduleから呼び出すことができます。
p "3. Use as class method"
module ModClassMethod
  def self.hello
    puts 'Hello'
  end
end
ModClassMethod.hello #=> "Hello"


# 4. モジュール関数とクラスメソッドの優先度
# 同名のモジュール関数とクラスメソッドが存在する場合、Moduleの中で後に定義されたメソッドが実行されます。
p "4.1 module_function's priority"
module ModPriority1
  def hello
    puts 'module'
  end

  def self.hello
    puts 'class'
  end
  module_function :hello

end
ModPriority1.hello #=> "module"


p "4.2 module_function's priority"
module ModPriority2
  def hello
    puts 'module'
  end

  module_function :hello

  def self.hello
    puts 'class'
  end
end
ModPriority2.hello #=> "class"


# 5. 名前空間
# 名前空間を利用することによってクラス名やメソッド名の重複を防ぐことができます。
p "5. Use as namespace"
module ModNamespace
  class Hoge
    def self.hello
      puts 'hello'
    end
  end
end
ModNamespace::Hoge.hello #=> "hello"


# 6. include
# 対象のクラスにincludeしたモジュールのメソッドがインスタンスメソッドとして組み込まれます。
# クラスからnewで作成したインスタンスで呼び出すことができます。これをクラスメソッドとして呼びだそうとすると、undefined methodのエラーが出ます。
module ModInclude
  def hello
    puts 'Hello'
  end
end

class ObjInclude
  include ModInclude
end
p "6. Use as include"
ins = ObjInclude.new
ins.hello #=> "Hello"


# 7. extend
# 対象のクラスにextendしたモジュールのメソッドがクラスメソッドとして組み込まれます。
# クラスメソッドなのでインスタンスでは呼び出すことができず、いつも通りクラスから直接呼び出します。こちらもインスタンスから呼びだそうとすればundefined methodです。
module ModExtend
  def hello
    puts 'Hello'
  end
end

class ObjExtend
  extend ModExtend
end
p "7. Use as extend"
ObjExtend.hello #=> "Hello"

