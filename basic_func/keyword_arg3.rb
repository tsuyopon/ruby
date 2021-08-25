#
# 任意のキーワードを受け付ける ** 引数
# 

# 任意のキーワード引数を扱いたい場合
# **othersを指定しないと、ageやsex以外のキーワード引数を受け取るとエラーになります。
def member(name, age: 10, sex: "male", **others)
	address = others[:address]
	country = others[:japan]
	p "age=#{age}, sex=#{sex}, address=#{address}"
end

member('taro', age: 21, sex: "male", address: "Tokyo", country: "Japan")
