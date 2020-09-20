=begin
前のaccessor1.rbでは参照しかしていないのにattr_accessorを使っているので実は権限の与えすぎでした。

今回の例では適切に以下の３つのアクセサメソッドを割り振っています。
- attr_reader #rede（読む）
- attr_writer #write（書く）
- attr_accessor #access(読むと書くの両方)

=end


class Idol
  # 参照のみ可能
  attr_reader :name

  # 書き込みのみ可能
  attr_writer :type

  # 参照、書き込み両方が可能
  attr_accessor :rank

  def initialize(name, type, rank = 100)
    @name = name
    @type = type
    @rank = rank
  end

  def display
    puts "#{@name} (#{@type}) Rank: #{@rank}"
  end
end

miku = Idol.new('Hatsune miku', 'cool')
miku.display

# attr_accessor は読み書き可能
p miku.rank # => 100
miku.rank = 3
p miku.rank # => 3

# attr_reader は getter のみ
p miku.name

# 以下の様に設定されていない getter, setter を使おうとするとエラー(エラーにならない様にコメントしている)
#miku.name = 'Hatsune miku2"
## => NoMethodError: undefined method `name='

# attr_writer は setter のみ    (エラーにならないようにコメントにしている)
#p miku.type
## => NoMethodError: undefined method `type' for
miku.type = 'pop'
miku.display
