# AtCoder社では1人で行うトランプを使ったゲームが流行っています。
# AtCoder社特製トランプでは、各カードにアルファベット小文字1文字（a～z）、または@の文字が書かれています。

# ゲームは以下の手順で行います。
# 1. カードを同じ枚数ずつ2列に並べて文字列を2つ作ります。
# 2. @のカードは、それぞれa,t,c,o,d,e,rのどれかのカードと置き換えます。
# 3. 2つの列が指し示す文字列が同じであれば勝ち、同じでなければ負けです。
# 手順 1. で並べられた2 つの列が指し示す2つの文字列与えられるので、適切に@を置き換えて、このゲームで勝つことができるかどうかを判定するプログラムを書いてください。

s = gets.chomp
t = gets.chomp

alphabet_s = s.split("")
alphabet_t = t.split("")
ary_length = alphabet_s.length

card_at = ["a","t","c","o","d","e","r","@"]
output_judge = "You can win"

(0..ary_length-1).each do |num|
    if alphabet_s[num] != alphabet_t[num]
        if alphabet_s[num] == "@" && card_at.include?(alphabet_t[num])
        elsif alphabet_t[num] == "@" && card_at.include?(alphabet_s[num])
        else
            output_judge = "You will lose"
        end
    end
end

puts output_judge

