# とある組織で、リーダーを選ぶ選挙が行われた。
# 組織は n 人の構成員で構成されており、各人は最もリーダーにふさわしい人物の名前を書いた。
# リーダーは、得票数が最も多い人物が選ばれることになっている。
# 得票数が最も多い人物の名前を出力せよ。得票数が最も多い人物が複数いる場合は、そのうちどの名前を出力してもよい。

n = gets.chomp.to_i
name_voted = n.times.map{gets.chomp}
name = ""
count_voted = 0

(0..n-1).each do |num|
    target_name = name_voted[num]
    if name != target_name && name_voted.count(target_name) > count_voted
        name = target_name
        count_voted = name_voted.count(target_name)
    end
end

puts name