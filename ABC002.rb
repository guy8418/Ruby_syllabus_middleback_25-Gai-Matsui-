# 神の恵みで財産を築いた高橋くんですが、なんとそこには罠がありました。
# 神は、高橋くんの発した言葉から母音 a、i、u、e、o を全て盗んでいったのです。
# 高橋くんが発した言葉を表す文字列w が与えられるので、周囲の人が聞く言葉を表す文字列を出力するプログラムを書いてください。

w = gets.chomp 
words = w.split("")
vowel = ["a","i","u","e","o"]

vowel.each do |alphabet|
    words.delete(alphabet)
end

words_no_vowel = words.join
puts words_no_vowel