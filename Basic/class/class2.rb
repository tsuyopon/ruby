=begin
@@, @の違いについてです。

クラス変数: @@から始まる変数です。
   一般的にこの変数はメソッド内ではなく、クラス内のメソッドではない場所で定義します。(一応、メソッドでも定義できるが、メソッドが呼ばれるまで設定されない)
   クラス変数は、クラスと子孫クラス・それらのクラスのインスタンス変数で共有されます。


なお、@については定義される位置によってクラスインスタンス変数かインスタンス変数か分かれてきます。以下のコードを確認してください。

クラスインスタンス変数: @xxxがクラス直下に定義されている場合です。
   変数が設定されたクラスのみ参照できる変数です。
   クラスのインスタンスや子孫クラスからは参照できません。

インスタンス変数: @xxxがメソッド内に定義されている場合です。

=end

class Creature
  # クラスインスタンス変数 (クラス直下に定義されているので)
  @type = "test"

  # クラス変数
  @@counter = 0

  def initialize(name)
    # インスタンス変数 (メソッド内で定義されているので)
    @name = name
    @@counter += 1
  end

  def self.count
    "You have #{@@counter} creatures."
  end
end

dog = Creature.new('hot')
alligator = Creature.new('thanks')
hippopotamus = Creature.new('idiot')

p Creature.count  # => "You have 3 creatures."
