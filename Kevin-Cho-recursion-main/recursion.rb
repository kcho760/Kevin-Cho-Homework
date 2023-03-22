require "byebug"

def sum_to(n)
    if n < 0
        return nil
    end
    return n = 1 if n <= 1
    sum = n + sum_to(n-1)
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

    if string.length == 1
        return string[-1]
    end

    string[-1] + reverse(string[0..-2])
end