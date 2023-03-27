class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        self.value=value
        self.neighbors=[]
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    visited = []
    to_visit = []
    
    # add root node to visited list and to_visit queue
    visited << starting_node
    to_visit << starting_node
    
    while !to_visit.empty?
      current_node = to_visit.shift
      if current_node.value == target_value
        return current_node
      end
      # node not found, add adjacent nodes to be visited ifnot already
      current_node.neighbors.each do |node|
        if !visited.include?(node)
          visited << node
          to_visit << node
        end
    end
    end
end

p bfs(a, "f")