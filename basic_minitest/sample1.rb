#
# minitestはテストを自動化するためのテスト用のフレームワークです。
# $ ruby sample1.rbで実行するだけでテストを実施します。
#

def number(n)
  if n == 1
    "one"
  elsif n == 2
    "two"
  elsif n == 3
    "three"
  elsif n == 4
    "four"
  else
    "others"
  end
end


require 'minitest/autorun'


# 習慣的に関数名 + Test とます。 Minitest::Testの継承が必要です。
class NumberTest < Minitest::Test
  def test_number
    assert_equal 'one', number(1)
    assert_equal 'two', number(2)
    assert_equal 'three', number(3)
    assert_equal 'four', number(4)
    assert_equal 'others', number(100)
  end
end
