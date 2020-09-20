=begin
独自のExceptionを発行する。
=end

class ExceptionTest
  def test
    begin
      # 独自定義のエラーを発生させる
      raise ArgumentError, "ArgumentErrorが発生しました"
    rescue ZeroDivisionError => ex
      puts "ZeroDivisionError"
    rescue ArgumentError => ex
      puts "ArgumentError"
      p ex
    rescue StandardError => ex      # StandardErrorは一番後ろに配置しないとここに入ってしまう
      puts "StandardError"
    end
  end
end

obj = ExceptionTest.new
obj.test
