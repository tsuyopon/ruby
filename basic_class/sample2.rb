#!/usr/bin/ruby 

=begin
クラス定数のサンプル
=end


class Foo

  # @@で定義されているものは定数。class内にあるので、クラス定数
  @@foo = 1

  def bar
    puts @@foo
  end

end

foo = Foo.new()
foo.bar
