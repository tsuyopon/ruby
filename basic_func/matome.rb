=begin
rubyの関数に関して

rubyではメソッド名に決まりがあります。以下の２つのどちらかの決まりを満たしていないとエラーになります
- 1.１文字目は英文字かアンダーバー（_）
- 2.２文字目以降は英数文字かアンダーバー



=end

# 1. デフォルト引数
def plus(num1, num2=1)
  num1 + num2
end
p plus(1)
p plus(2, 3)


# 2.キーワード引数(ruby2.0以降対応)
def plus2(num1:, num2:)
  num1 + num2
end
p plus2(num1: 3, num2: 4)
p plus2(num2: 4, num1: 3)

# 3. 引数に*のアスタリスクを1つ付与すると、可変長引数となります
# 可変長引数は配列として受け付けられます。
def msg(*msg)
  p msg
end
msg('fuga') 
msg('fuga', 'hugahuga')

# 4. 引数に**のアスタリスクを２つ付与すると、オプション引数となります。オプション引数は"ハッシュ"として受け付けられるようになります。
def msg2(**msg)
  p msg
end
msg2(msg: 'fuga')
msg2(msg: 'huga', name: 'hugahuga')

# 5.アンパサンド(&)を付加することによって、ブロックも引数として渡すことができます。ブロックとは{ p "foo" } のように囲まれたものです。
def blockcall(&block)
  block.call
end
blockcall{ p 'this is blockcall' }



