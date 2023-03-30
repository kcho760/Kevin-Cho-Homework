require "byebug"

def sluggish_octopus(fishes)
    sorted = false
    while !sorted
        sorted = true

        i = 0
        while i < fishes.length - 1
            if fishes[i].length > fishes[i+1].length
                fishes[i],fishes[i+1] = fishes[i+1],fishes[i]
                sorted = false
            end
            i+=1
        end
    end
    fishes[-1]
end
class Array
    def dominant_octopus#merge sort
        return self if self.length <=1
        # debugger
        mid = self.length/2
        left = self[0...mid].dominant_octopus
        right = self[mid..-1].dominant_octopus

        merge(left,right)
    end

    def self.merge(left,right)
        new_arr = []
        # debugger
        until left.empty? || right.empty?
            if left[0].length <= right[0].length
                new_arr << left.shift
            else
                new_arr << right.shift
            end
        end
        new_arr.concat(left)
        new_arr.concat(right)
        new_arr
    end
end

def clever_octopus(fishes)
    longest = ""
    fishes.each do |fish|
        if fish.length > longest.length
            longest = fish
        end
    end
    longest
end

def slow_dance(tiles)

end
# ['fish', 'fiiish', 'fiiiiish', 'fiiiish','fffish', 'ffiiiiisshh', 'fsh','fiiiissshhhhhh']