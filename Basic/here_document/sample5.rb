=begin
メソッドチェーンをつなげる
=end


# パターン1
puts <<-EOS.downcase
FOO
BAR
BAZ
EOS


# パターン2
begin
  str = <<-EOS.gsub(/^\s+/, '')
    foo
    bar
    baz
  EOS
end
print str
