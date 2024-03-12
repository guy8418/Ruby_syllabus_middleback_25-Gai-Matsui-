# n 時 m 分のアナログ時計があります。短針と長針のなす角度のうち小さい方を度数法で求めてください。
n,m = gets.chomp.split(" ").map(&:to_f)
n = 360/12 * (n % 12) + 360/12 * m.to_f/60
m = 360 * m/60

puts [(n - m).abs,360 - (n - m).abs].min
