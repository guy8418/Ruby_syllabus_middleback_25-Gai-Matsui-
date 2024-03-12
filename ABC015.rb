# 高橋くんは、上司から 
# 1. 会社で作っている N 個のソフトウェアに平均でどれくらいのバグがあるか調べろ 
# 2. ただし、バグがないソフトは調査母数に含めるな 
# と指示されました。 しかも、上司は小数が嫌いです。とはいえ、バグ数の平均値を過小報告するわけにもいかないので、値を切り上げて報告することにしました。 
# 高橋くんは、素早くバグ数の平均値をまとめて上司に報告する必要があります。 ソフトウェアごとのバグ数が与えられるので、バグが含まれるソフトウェアの、バグ数の平均値を小数で切り上げて求めてください。

n = gets.chomp.to_i
bag = gets.chomp.split(" ").map(&:to_i)
total_bag = 0
(0..bag.length-1).each do |num|
    if bag[num] != 0
        total_bag += bag[num]
    else
        n -=1
    end
end  

average_bag = total_bag/n.to_f

puts average_bag.ceil