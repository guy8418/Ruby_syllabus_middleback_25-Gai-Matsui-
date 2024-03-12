# ABCマーケットは高橋王国で最も人気なスーパーマーケットです。 入り口は自動ドアになっています。 
# この自動ドアは人が前を通りかかると自動で開き、そこから T 秒後まで開き続け、その後自動的に閉じます。
# ドアが開いている状態で新たに人が前を通りかかると、通りかかった時刻のさらに T 秒後まで開き続ける時間が延長されます。
# 今日はのべ N 人の客が自動ドアの前を通りかかりました。 i 番目の人が通りかかった時刻はABCマーケットが開店してから A_i​ 秒経った時刻です。
# 今日、この自動ドアが開いていた合計秒数を求めてください。

n,t = gets.chomp.split(" ").map(&:to_i)
elapsed_s = n.times.map{gets.chomp.to_i}
open_time = 0

#i番目の人によって開き続けた時間(1<=i<=N-1)
(1..n-1).each do |num|
    if elapsed_s[num] < elapsed_s[num-1] + t
        open_time += elapsed_s[num] - elapsed_s[num-1]
    else
        open_time += t
    end
end

#N番目の人によって開いた時間
open_time += t

puts open_time

