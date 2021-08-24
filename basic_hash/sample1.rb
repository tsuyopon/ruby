#
# ハッシュの簡単な操作(参照、追加、更新、削除)
#

h1 = {'Red'=>1, 'Blue'=>2, 'Green'=>2}   # ダブルクォートで囲ってもOK

# ハッシュのクラスを表示
p h1.class

# ハッシュサイズの取得
p h1.size

# ハッシュの追加
h1['Yellow'] = 3

# 既存のハッシュ中の更新
h1['Green'] = 4

# 値の削除
h1.delete('Blue')  # 単純な指定

# 値の出力
p h1
p h1['Red']
