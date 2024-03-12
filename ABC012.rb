# 高橋君は、お風呂で湯船に浸かった秒数を数える習慣があります。

# 今日は、高橋君は湯船でN 秒まで数えました。

# しかし、秒だと解りにくいので、何時間何分何秒、という形に直したいです。

# 秒数N が与えられるので、 hh:mm:ss の形式に変換しなさい。

input = gets.chomp.to_i

hours = input/3600
minutes = (input - hours*3600)/60
seconds = (input - hours*3600 - minutes*60)
time = [hours,minutes,seconds]

(0..2).each do |num|
    if time[num] < 10
        time[num] = format("0%d",time[num])
    end
end
puts "#{time[0]}:#{time[1]}:#{time[2]}"