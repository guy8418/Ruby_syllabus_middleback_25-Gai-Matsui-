# 英小文字からなる 12 個の文字列 S_1 ​ , S_2 ​ , ..., S_12 ​ が入力されます。
# これらの文字列のうち、文字 r が含まれるものの個数を数えてください。

r_count = 0
12.times do
  s = gets.chomp
  if s.include?("r")
    r_count += 1
  end
end

puts r_count
