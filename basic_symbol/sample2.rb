#
# シンボルを使ったハッシュの操作
#


# 以下のh1, h2のシンボルを使ったハッシュ定義はどちらも同じです。
h1 = { 
    Red: 1,
    Blue: 2,
    Green: 2,
}

h2 = { 
    "Red": 1,
    "Blue": 2,
    "Green": 2,
}


# 同値であることを確認する
p h1 == h2   # true

# 値を参照する
p h1["Red"]  # nil
p h1[:Red]   # 1

# 値を変更する
h1[:Red] = 3
p h1

# 値を追加する
h1[:Yellow] = 4
p h1

# 値を削除する
h1.delete(:Yellow)
p h1

