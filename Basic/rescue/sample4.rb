=begin
例外によってrescue処理を分ける
=end

class ExceptionTest
  def test
    begin
      # 0での除算でエラーを発生させる
      1/0
    rescue StandardError => ex
      puts "StandardError"
    rescue ZeroDivisionError => ex
      puts "ZeroDivisionError"
    end
  end
end

obj = ExceptionTest.new
# 例外発生
obj.test   # => StandardError
