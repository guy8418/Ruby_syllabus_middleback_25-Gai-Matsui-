# 2 つの正整数 A, B が与えられます。 
# A の十進表記の右に B の十進表記（先頭に  0 を付けない）を連結して得られる整数を  2 倍したものを出力してください。
a,b = gets.chomp.split(" ")
right = (a+b).to_i

puts right*2