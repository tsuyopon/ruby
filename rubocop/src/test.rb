# conding: utf-8
require "date"


class SampleRubocop
  def initialize( key )
    @key = key
  end

  def hey
    @key
  end
end


if __FILE__ == $0
  hoge = SampleRubocop.new("hoge")
  p hoge.hey
end

