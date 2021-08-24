#
# シンボル(Symbol)について
#

# クラスの表示
p :apple.class   # Symbol
p 'apple'.class  # String

# 出力
test1 = 'grape'
test2 = :grape
p test1          # "grape"
p test2          # :grape

# 同じオブジェクトであるかどうかを調べる
# Stringは全てオブジェクトIDが異なりますが、Symbolはすべて同じになります
p 'hoge'.object_id
p 'hoge'.object_id
p 'hoge'.object_id
p :hoge.object_id
p :hoge.object_id
p :hoge.object_id

# SymbolとStringの違いとしては、Symbolは変更はできませんが、Stringは変更可能です。
# このようにkey名を勝手に変更されたくない場合には、StringよりもSymbolの利用が適しています。

# Stringは変更可能
p 'moge'.upcase!

# Symbolは変更不可。以下を実行するとエラーになる
#:moge.upcase!
