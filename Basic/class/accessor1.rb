=begin
rubyにはアクセサメソッドがあります。

アクセサメソッドには次の3つが存在します。
- attr_reader #rede（読む）
- attr_writer #write（書く）
- attr_accessor #access(読むと書くの両方)

これは参照しかしていないですが、attr_accessorというオーバースコープな権限を許可している例です。
詳細はaccessor2.rbも確認してください。
=end
class Triangle
  attr_accessor :baseLength, :height

  def initialize(baseLength, height)
    @baseLength = baseLength
    @height = height
  end
end

sankaku = Triangle.new(10.0, 3.0)
puts sankaku.baseLength
puts sankaku.height
