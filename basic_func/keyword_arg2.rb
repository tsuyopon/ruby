#
# ハッシュを使った疑似キーワード引数
# 

# {}によりハッシュを受け取ってキーワード引数のように見せることができます。
def member(name, others = {})
	age = others[:age]
	sex = others[:sex]
	address = others[:address]
	p "age=#{age}, sex=#{sex}, address=#{address}"
end

# nameとothersで引数を入れ替える場合
def member2(others = {}, name)
	age = others[:age]
	sex = others[:sex]
	address = others[:address]
	p "age=#{age}, sex=#{sex}, address=#{address}"
end


# 最後の引数が疑似キーワード引数でハッシュを想定している場合は {} を省略できます。
member('taro', age: 21, sex: "male", address: "Tokyo")
member('taro', {age: 21, sex: "male", address: "Tokyo"})   # {}を付与しても同じ


# 引数を入れ替えた関数member2を呼び出す場合、最後の引数がハッシュを想定しているわけではないので、{}が必ず必要です。
#member2(age: 21, sex: "male", address: "Tokyo", 'taro')    #  これは実行エラーになります。
member2({age: 21, sex: "male", address: "Tokyo"}, 'taro')
