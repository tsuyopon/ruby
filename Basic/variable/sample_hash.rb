# ハッシュ
p hash = {"a" => 1, "b" => 2}

# シンボル
p sym = {:a => 1, :b => 2}

# 値の個別参照
p hash["a"]  #=> 1
p hash["b"]  #=> 2

# ハッシュへの値の設定
hash["c"] = 100
hash["d"] = 1000
p hash

# キーの取得
p hash.keys

# 値の取得
p hash.values

# キーの存在確認
p hash.key?("a")

# ハッシュのペアの削除 
p hash.delete("a")
p hash
