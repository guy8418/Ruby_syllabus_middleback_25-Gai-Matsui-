# 高橋君は、丸が大好きです。今日も、原点を中心とした大きさの違う円を N 個書きました。
# その円の集合に対し、外側から赤白交互に色を塗ったとき、赤く塗られる部分の面積を出力しなさい。

n = gets.to_i
r = n.times.map{gets.chomp.to_i}
red_r = 0
white_r = 0
r.sort!.reverse!

r.each_with_index do |r_value, idx|
  if idx.even?
    red_r += r_value*r_value
  else
    white_r += r_value*r_value
  end
end

puts Math::PI*(red_r-white_r)
