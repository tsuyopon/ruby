=begin
%wと%Wのサンプルプログラムです。これらは配列を作ります。
=end

# %wのサンプル
# 配列を作る。配列の要素はスペース区切りで指定する。 式の展開はされない。
array = %w(one two three four)
p array
# => ["one", "two", "three", "four"]


# %Wのサンプル
# 配列を作る。%w()と違い、式の展開がされる。
ruby = 'Ruby'
PYTHON = 'Python'
array = %W(#{ruby} #{PYTHON} PHP)
p array
# => ["Ruby", "Python", "PHP"]
