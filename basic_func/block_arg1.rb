#
# アンパサンド(&)を付加することによって、ブロックも引数として渡すことができます。ブロックとは{ p "foo" } のように囲まれたものです。
#

def blockcall(&block)
  block.call
end
blockcall{ p 'this is blockcall' }
