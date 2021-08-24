#
#  **でハッシュを展開する
#


# **でのハッシュ展開はSymbol記法でしか利用できない
color1 = {Red: 1, Blue: 2, Green: 2, Yellow: 3}
color2 = {Cyan: 4, **color1}
puts color2

# mergeを使った場合は**記法と同じです
color3 = {Purple: 4}.merge(color1)
puts color3

# **でのハッシュを展開はString記法では不可能
#color1 = {'Red'=>1, 'Blue'=>2, 'Green'=>2, 'Yellow'=>3}
#color2 = {'Cyan'=>4, **color1}
#puts color2


