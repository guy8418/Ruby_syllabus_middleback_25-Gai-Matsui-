#直大くんと直子さんは双子の兄妹です。今日は家の廊下でスイカ割りの練習をすることになりました。
#廊下は東西方向に無限に長く、途中の1箇所に直大くんの部屋の入り口があります。
#最初、直大くんの部屋の前に直大くんと直子さんがいます。スイカ割りの練習では、以下のN回の移動を順に実行します。
#i番目の移動:最初に直子さんが方角とメートル単位の距離d_i​を指定します。指定する方角は東か西で、d_i​は正整数です。
#その後、直大くんが指定された方向を向いて、距離d_i​を目標に移動します。直大くんは1回の移動においてAメートルよりも少ない距離を移動することと、Bメートルよりも多い距離を移動することが苦手です。
#そのため、目標移動距離がd_i​メートルだったときの最終移動距離は以下のようになります。
#・d_i＜Aのとき、直大くんは向いている方向にAメートル進む。
#・A≦d,i​≦Bのとき、直大くんは向いている方向にd_i​メートル進む。
#・d_i＞Bのとき、直大くんは向いている方向にBメートル進む。
#あなたの課題は、直大くんがN回の移動を終えたときにどこにいるのかを求めることです。

n,a,b = gets.chomp.split(" ").map(&:to_i)
distance = 0

(0..n-1).each do |num|
    s,d = gets.chomp.split(" ")
    d = d.to_i

    if d < a
        if s == "East"
            distance += a
        else
            distance -= a
        end
    elsif d >= a && d<= b
        if s == "East"
            distance += d
        else
            distance -= d
        end
    elsif d > b
        if s == "East"
            distance += b
        else
            distance -= b
        end
    end
end

if distance > 0
    puts "East #{distance}"
elsif distance < 0
    puts "West #{-distance}"
else
    puts 0
end
