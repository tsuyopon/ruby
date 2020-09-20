=begin
クラス定数については大文字で変数名を定義するとクラス名になります。
=end

class StarLightStudent

  # class式内のトップレベルに大文字から始まる変数を定義するとクラス定数になる
  # クラス定数は子孫クラスからもアクセス可能で、定数なので変更しようとするとwarningが発生します。
  SCHOOL_NAME = 'StarLight'

  attr_reader :name
  def initialize(name)
    @name = name
  end

  def display
    puts "#{@name} - #{SCHOOL_NAME} Scholl"
  end
end

class Idol < StarLightStudent
  def initialize(name, type)
    super name
    @type = type
  end

  def display
    puts "#{@name} (#{@type}) - #{SCHOOL_NAME} Scholl"
  end
end

p StarLightStudent::SCHOOL_NAME
# => "StarLight"

hoge = StarLightStudent.new('hoge')
hoge.display

fuga = Idol.new('fuga', 'cute')
fuga.display
