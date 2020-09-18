=begin
メソッド呼び出しの引数に指定してみる。
=end

require 'json'

# パターン1
puts JSON.parse(<<-JSON, symbolize_names: true, max_nesting: 10)
{
    "answer": 42,
    "heredoc": "sugoi"
}
JSON


# パターン2
def method(*args)
  p args
end

method('foo', <<EOS, 'baz')
bar
EOS


# パターン3
def method(*args)
  p args
end

method(<<FOO, <<BAR, <<BAZ)
foo
FOO
bar
BAR
baz
BAZ
