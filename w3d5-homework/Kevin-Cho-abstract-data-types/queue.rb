class Queue
    def initialize
        @i = []
    end

    def enqueue(el)
        @i << el
    end

    def dequeue
        @i.shift
    end

    def peek
        return @i[-1]
    end

end