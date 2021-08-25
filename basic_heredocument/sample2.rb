=begin
ヒアドキュメントでJSON文字列や変数・定数展開したい場合などを扱う
=end

lang = 'language'
RUBY = 'Ruby'

# 1. 基本
#   シングルクォートで囲むと変数が展開されません。
json = <<'EOS'
{
  "language": "#{RUBY}"
}
EOS
p json


# 2. 変数・定数の展開をする場合

json = <<"EOS" # ここをダブルコーテーションで囲う
{
  "#{lang}": "#{RUBY}"
}
EOS
p json

json = <<EOS # コーテーション無しでもOK
{
  "#{lang}": "#{RUBY}"
}
EOS
p json

# 3. コマンドを出力させたい場合
command_str = <<`EOS`
echo "What time is it now?"
date
EOS
print command_str


## 3. 「<<-」演算子を使ってインデントを行う
#def output
#  json = <<-"JSON"
#{
#  "language": "Ruby"
#}
#  JSON  
#  # ここのインデントを調整できる
#
#  puts json
#end
#
#output
