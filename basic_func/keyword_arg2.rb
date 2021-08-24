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

member('taro', age: 21, sex: "male", address: "Tokyo")
