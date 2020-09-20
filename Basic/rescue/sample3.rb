=begin
=end
begin
  1 / 0
rescue => e
  p e.class
  p e.message
  p e.backtrace
end
