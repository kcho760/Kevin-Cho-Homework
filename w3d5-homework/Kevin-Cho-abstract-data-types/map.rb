class Map
    def initialize
        @i = []
    end

    def set(key,value)
        @i << [key,value]
    end

    def get(key)
        @i.each do |pair|
            if pair[0].include?(key)
                return pair
            end
        end

    end

    def delete(key)
        @i.each_with_index do |pair,idx|
            if pair[0].include?(key)
                @i.delete(pair)
            end
        end
    end

    def show
        return @i[-1]
    end
end