#!/usr/bin/ruby 

#
# インスタンスメソッドの簡単なサンプル
#

class User

  # インスタンスメソッドは以下のように定義することも可能です
  # class << self は特異クラス
  class << self
    def description
      puts "description1 called"
    end

    def description2
      puts "description2 called"
    end
  end
end

# クラスメソッドの呼び出し方法
User.description
User.description2
