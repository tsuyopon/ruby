#
# クラスメソッドをprivateにしたい場合の注意点
#

class User

  private

  # privateキーワードの下に配置してprivateになるメソッドはインスタンスメソッドだけです。
  # 以下のクラスメソッドはprivate下に定義してもprivateメソッドとして扱われません。
  def self.hello
    p 'self.hello'
  end


  class << self
    # class << selfの構文なら、private配下に定義すればクラスメソッドをprivateメソッドとして扱うことができる。
    private

    def hello2
      p 'hello2 in class << self'
    end
  end

end

# 注意: privateで定義したself.helloが呼び出せてしまう。
User.hello


# hello2はprivateのインスタンスメソッドとして解釈される
#User.hello2
