# 高橋君は趣味でアクセサリーを作っている。 
# アクセサリーは a, b, c のいずれか 1 文字が書かれたブロックを横 1 列に並べることで作成できる。 
# 高橋君は、以下の手順でアクセサリーの作成を行う： 
# 手順 0 : 高橋君は b 1文字からなるアクセサリーを作成する。 
# 以降の手順では、既にあるアクセサリーの両端にブロックを 1 つずつ追加することでアクセサリーを改造する。
#  手順 3n+1(n≧0) : 手順 3n で完成したアクセサリーの左端に文字 a が書かれたブロックを、右端に文字 c が書かれたブロックを付け足す。
#  手順 3n+2(n≧0) : 手順 3n+1 で完成したアクセサリーの左端に文字 c が書かれたブロックを、右端に文字 a が書かれたブロックを付け足す。
#  手順 3n(n≧1) : 手順 3n−1 で完成したアクセサリーの左端に文字 b が書かれたブロックを、右端に文字 b が書かれたブロックを付け足す。 
# 高橋君はアクセサリーの作成を好きな手順の直後に終了することができる。終了した場合、アクセサリーには、アクセサリーを構成するブロックに書かれた文字を左から右に読んだものと同じ名前が付けられる。 
# 例えば、手順 0, 1, 2, 3 それぞれの直後にアクセサリーの作成を終了した場合、アクセサリーの名前は順に、b, abc, cabca, bcabcab となる。
#  文字列 S が与えられるので、その文字列がアクセサリーの名前として考えられるかを判定し、考えられるなら何番目の手順の直後にアクセサリーの作成を終了したのかを求めよ。

def is_accessory(len, string)
    if len == 1
        if string[0] == "b"
            return 1
        else
            return -1
        end
    elsif len % 3 == 0
        if string[0] == "a" && string[-1] == "c"
            return is_accessory(len-2, string[1..-2])
        else
            return -1
        end
    elsif len % 3 == 2
        if string[0] == "c" && string[-1] == "a" 
            return is_accessory(len-2, string[1..-2])
        else
            return -1
        end
    elsif len % 3 == 1
        if string[0] == "b" && string[-1] == "b"
            return is_accessory(len-2, string[1..-2])
        else
            return -1
        end
    end
end

n = gets.chomp.to_i
s = gets.chomp.split("")
puts is_accessory(n, s)
