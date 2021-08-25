=begin
ArrayからHashへと変換する

to_a:Arrayに変換する。
to_h:Hashに変換する。
=end

# パターン1
score = [[:taguchi,200], [:endo,300]]
puts score
puts score.class
#配列として表示させられる。
puts score.to_h
puts score.to_h.class



# パターン2
arr = [a: 1, b: 2, c: 3, a: 4, e: 5]
p Hash[ *arr ] 
