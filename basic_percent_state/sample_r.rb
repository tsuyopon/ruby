=begin
URLの正規表現を作る場合などは%rで括ると良い。//は\/\/へと変換してくれます。
=end

url = %r(^http://www.yahoo.co.jp)
p url
