# 文字列の結合
puts "hoge" + "hoge"

# 真偽値
test = "hoge"
p test
p test.empty?

# 配列
city = ["Tokyo", "London", "Paris"]
p city[1]
p city.include?("Tokyo")

# ハッシュ
infos = {"name" => "hoge_hash", "number" => 10}
puts infos["name"] 

# ハッシュin ハッシュ (連想配列)
infos = { personal:
  {name: "hoge", number: 10, area: "HashInHash"}
}
puts infos[:personal][:area]

# シンボル
infos = {:name => "hoge_symbol", :number => 10}
puts infos[:name]
