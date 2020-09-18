=begin
%qと%Qについて。これらはシングルクォートかダブルクォートの役割の違いがあります。
=end


# %qについて
# シングルクオートで囲う場合と同等。
# シングルクオートなので、変数や定数の展開はされない。
ruby = "Ruby"
str = %q(Programming language "#{ruby}")
puts str
# => Programming language "#{ruby}"


# %, %Qについて
# シングルクオートで囲う場合と同等。
# シングルクオートなので、変数や定数の展開はされない。
str = %(Programming language "Ruby")
puts str
# => Programming language "Ruby"

ruby = "Ruby"
str2 = %(Programming language "#{ruby}")
puts str2
# => Programming language "Ruby"

