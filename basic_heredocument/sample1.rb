=begin
ヒアドキュメントの記述方法について
=end


# <<EOSを使った場合
# 識別子であるEOSの始点の<<EOSから次に出てくるEOSまでの囲まれている部分が文字列となります。
def func1
  puts <<EOS
    Hello,

    func1!
EOS
end

func1


#  <<-EOS を使った場合
#  <<EOSを使った場合には、EOSの位置が気に食わないのでdef~endの中で一段ネストさせたいといった時に用います。
def func2
  puts <<-EOS
    Hello,

    func2! 
  EOS
end

func2

#  <<~EOS を使った場合 (Ruby2.3以降)
#  出力させたい文字列の先頭には空白はいれたくない場合には次の様に記述できます。
def func3
  puts <<~EOS
    Hello,

    World!
  EOS
end

func3


