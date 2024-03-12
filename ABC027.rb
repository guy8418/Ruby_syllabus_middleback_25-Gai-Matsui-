# N個の島が横一列に並んでいる。1≦i≦N−1について、左からi番目の島とi+1番目の島は隣り合っている。
# はじめ、左からi(1≦i≦N)番目の島にはa_i​人の住人が住んでいる。
# 高橋君はすべての島に同じ人数の住人が住むようにしたいと考えている。
# 高橋君は隣り合う2つの島の間に橋を架けることができる。また、直接的または間接的に橋で結ばれた複数の島の間で、住人を自由に移動させることができる。
# すべての島に同じ人数の住人が住むようにするために、架ける必要のある橋の本数の最小値を求めよ。

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
a_sum = a.sum
num_bridge = 0

if a_sum%n != 0
  num_bridge = -1
else
  num_people = a_sum/n
  (0..n-2).each do |num|
    if a[num] != num_people
      num_bridge += 1
      a[num + 1] += a[num] - num_people
    end
  end
end

puts num_bridge
