require "byebug"

def sum_to(n)
    if n < 0
        return nil
    end
    return n = 1 if n <= 1
    sum = n + sum_to(n-1)
end

def iter_sum(n)
    sum = 0
    (0..n).each do |num|
        count += num
    end
    sum
end

def add_numbers(nums_arr)
    if nums_arr.length == 0
        return nil
    end
    return nums_arr[0] if nums_arr.length == 1

    nums_arr[0] + add_numbers(nums_arr[1..-1])
end

def gamma_fnc(n)
    return nil if n == 0
# debugger
    return 1 if n == 1

    gamma = (n-1)*gamma_fnc(n-1)
end

def ice_cream_shop(flavors,favorite)

    if flavors.length <= 1 && flavors[0] != favorite
        return false
    end

    if flavors[0] == favorite
        return true
    end

    ice_cream_shop(flavors[1..-1],favorite)

end

def reverse(string)
    if string.length == 0
        return ""
    end

    string[-1] + reverse(string[0..-2])
end


def fibs(n)
    if n == 0
        return []
    end

    if n == 1
        return [0]
    end

    if n == 2
        return [0,1]
    end

    return fibs(n-1) << fibs(n-1)[1]+ fibs(n-1)[-2]

end

def fast_fibs(n)
    if n == 0
        return []
    end

    if n == 1
        return [0]
    end

    if n == 2
        return [0,1]
    end
    prev-fibs = fast_fibs(n-1)
    return prev-fibs << prev-fibs[1]+prev-fibs[-2]

end

def pascal_row(n)
    if n == 0
        return [1]
    end

    if n == 1
        return [1,1]
    end

    last_row = pascal_row(n - 1) #pascal_row(3) == [1,2,1]
    new_arr = []

    last_row.each_with_index do |ele,idx|
        break if idx == last_row.length - 1
        new_arr << ele+last_row[idx+1]
    end

    pascal_row(0) + new_arr + pascal_row(0)

end

    #     1
    #    1 1
    #   1 2 1
    #  1 3 3 1