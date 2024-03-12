# #高橋君は、ある日不思議な生物を見た。
# その生物は choku 語という言語を用いていることがわかった。
# 文字列S が以下の条件を満たしているときにS は choku 語であると定義する。

# 文字列 S が空文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に ch をつけた文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に o をつけた文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に k をつけた文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に u をつけた文字列であるとき。
# choku 語の理解を深めるため、与えられた文字列が choku 語であるかを判定するプログラムを作成することにした。

def is_choku(string)
    if string == ""
        return "YES"
    else
        if string[-1] == "o" || string[-1] == "k" || string[-1] == "u"
            string.chop!
            is_choku(string)
        elsif string.length > 1 && string[-2] == "c" && string[-1] == "h"
            string.slice!(-2,2)
            is_choku(string)
        else
            return "NO"
        end
    end
end

string = gets.chomp
puts is_choku(string)