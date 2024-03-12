# トリボナッチ数列というものがあります。この数列は3つ前までの数字を足したものです。厳密には、
# a_1 ​= 0,a_2 ​= 0,a_3 ​= 1 
# a_n ​= a_{n−1}​ + a_{n−2}​ + a_{n−3}​と定義されています。参考までに、トリボナッチ数列表を掲載します。
# この数列の第n項、a_nを10007で割った余りを求めてください。

def calculate_tribonacci_divided_by_10007(n)
    tribonacci_sequence = [0, 0, 1]
    if n < 4
        return tribonacci_sequence[n-1] 
    end

    (4..n).each do |num|
        next_sequence = tribonacci_sequence[num-2] + tribonacci_sequence[num-3] + tribonacci_sequence[num-4]
        tribonacci_sequence.push(next_sequence%10007)
    end

    return tribonacci_sequence.last
end

n = gets.chomp.to_i
puts calculate_tribonacci_divided_by_10007(n)