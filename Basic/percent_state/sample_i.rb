=begin
%iと%Iのサンプルプログラムです。
=end


# %iのサンプル
#要素がシンボルの配列を作る。

array = %i(Ruby Python PHP)
p array
# => [:Ruby, :Python, :PHP]


# %Iのサンプル
#要素がシンボルの配列を作る。%i()と違い、式の展開がされる。

ruby = 'Ruby'
PYTHON = 'Python'

array = %I(#{ruby} #{PYTHON} PHP)
p array
# => [:Ruby, :Python, :PHP]
