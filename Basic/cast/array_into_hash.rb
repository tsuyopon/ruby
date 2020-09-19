=begin
ArrayからHashへと変換する

to_a:Arrayに変換する。
to_h:Hashに変換する。
=end

score = [[:taguchi,200], [:endo,300]]
puts score
puts score.class
#配列として表示させられる。
puts score.to_h
puts score.to_h.class
