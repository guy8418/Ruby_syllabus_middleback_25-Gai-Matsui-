# 私は富豪だ。それも大富豪と言っていいぐらいお金を持っている。欲しいと思ったものはまずこの有り余るお金を使って買うことができる。しかし、この底の尽きないように思えるほどのお金でさえ人の心を買うことはできない。いくらお金があろうとも、ひとたび多くの庶民の反発を買ってしまえば、これまでのように生きていくことは難しくなるだろう。

# この度私は庶民の気持ちを理解するため、初めてファミリーレストランという場所を訪れた。メニューを広げ、料理の内容とその金額を確かめると、なるほど驚きの安さである。どの料理の金額も取るに足らないようなものだから、とりあえず最も金額が高いものを選ぼうかと考えた。

# しかし、考えてみれば、私は何のためにファミリーレストランに来たのであったか。庶民の気持ちを理解しようというのに、金額のことを考えずに最も高いものを選ぼうなどと、まるで意味がないではないか。ファミリーレストランに来たうえ、これ見よがしに最も高い料理を注文したとなったら、私の悪評が広まってしまう可能性だってある。

# とはいえ、せっかくだから高いものを選んでその味をみてみたいというのも確かである。そうだ、そういうことなら、この店で2 番目に高い料理を注文することにしよう。そう思って料理の金額を書き出してみたが、料理の種類が多いために2 番目に高いものを探すのはなかなか骨が折れる。自分で探すかわりに、プログラムを書いてなんとかできないだろうか？

# おっと、プログラムを書き始める前にひとつ言っておくが、最も高い金額の料理が複数あるときには注意してもらいたい。というのは、たとえば
# 4 種類の料理があり、それぞれの金額が100 円、200 円、300 円、300 円であったときには、2 番目に高いものというのは200 円の料理になるということだ。

n = gets.chomp.to_i
menu = n.times.map{gets.chomp.to_i}

payment_most_expensive = menu.max
menu.delete(payment_most_expensive)
payment_order = menu.max

puts payment_order