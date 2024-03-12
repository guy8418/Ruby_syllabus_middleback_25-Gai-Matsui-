# 高橋君は試作したたこ焼きを食べることにしました。
# 高橋君は熱々のたこ焼きが好きなので、できてすぐのたこ焼きから食べます。
# それぞれのたこ焼きが何秒前にできたかが与えられるので、一番できたてのたこ焼きが何秒前にできたか出力して下さい。

n = gets.chomp.to_i
input_T = n.times.map{gets.chomp.to_i}

output_min_time = input_T.min
puts output_min_time