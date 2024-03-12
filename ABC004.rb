# 高橋君は4x4マスの盤面を見つけました。
# 各マスには .ox のいずれかの文字が書かれています。
# 彼はこの盤面を回転させた後、どういった状態になるのか気になりました。
# 盤面を正面から見たときの状態が与えられるので、180度回転させた後の盤面を出力してください。
input_record_1 = gets.chomp
input_record_2 = gets.chomp
input_record_3 = gets.chomp
input_record_4 = gets.chomp
input = [input_record_1,input_record_2,input_record_3,input_record_4]
output_180_degree_rotated = []

(0..3).each do |num|
    output_180_degree_rotated[3-num] = input[num].split(" ").reverse.join(" ")
end

puts output_180_degree_rotated