# 半角の小文字アルファベットのみからなる文字列 S が与えられる。 文字列 S に対して以下の操作1から操作Nまでを番号の昇順に行う。

# 操作 
# i : 左からl_i番目の文字を左端、左からr_i (1≦l_i＜r_i≦∣S∣) 番目の文字を右端とした部分文字列を逆順にする。
# 例えば，文字列 abcdef に対して、左から 3 番目の文字 c を左端、左から 5 番目の文字 e を右端とした部分文字列を逆順にすると、文字列 abedcf が得られる。

# 操作 1 から操作 N までを番号の昇順に行った後の文字列を出力せよ。

s = gets.chomp
n = gets.to_i

(1..n).each do
  l,r = gets.chomp.split.map(&:to_i)
  s[l-1...r] = s[l-1...r].reverse
end

puts s