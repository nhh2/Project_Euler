def collect_multiples (limit)

    a = Array.new

        for x in 1...limit do
            if x % 3 == 0 || x % 5 == 0
                a.push(x)
            end
        end

    return a

end

def sum_multiples(limit)

    sum = 0

    collect_multiples(limit).each { |num| sum += num}

    return sum

end

## Test

def test_sum_multiples

    a = [10,100,1000]
    b = a.map {|x| sum_multiples(x)}
    print b

end

test_sum_multiples
