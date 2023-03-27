class Stack
    def initialize
        @i = []
    end
  
    def push(el)
      @i << el
    end
  
    def pop
      @i[0..-2]
    end
  
    def peek
      return @i[-1]
    end

    def inspect
      "#<Stack:#{self.object_id}>"
    end
  end
