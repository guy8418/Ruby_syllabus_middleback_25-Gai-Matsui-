# 文字列 S が与えられます。
# この文字列は A, B, C, D, E, F の 6 種類の文字から構成されている事が分かっています。
# 6種類の文字それぞれについて、 Sのなかに何回出てくるかを数えてください。

s = gets.chomp.split("")
consist_s = s.tally
["A","B","C","D","E","F"].each do |alphabet|
  if !consist_s.include?(alphabet)
    consist_s[alphabet] = 0
  end
end

puts "#{consist_s["A"]} #{consist_s["B"]} #{consist_s["C"]} #{consist_s["D"]} #{consist_s["E"]} #{consist_s["F"]}"
