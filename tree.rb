class Node
    attr_accessor :payload, :children
  
    def initialize(payload, children)
      @payload = payload
      @children = children
    end
  
  end
  
  def dfs(node, data)
      if node.payload == data
          
          return true
      end
          
          node.children.each do |child|
              a = dfs(child, data)
              if a == true
                  return true
              end
          end
      return false
  end
  
  # "Leaves"
  deep_fifth_node = Node.new(5, [])
  eleventh_node = Node.new(11, [])
  fourth_node   = Node.new(4, [])
  
  # "Branches"
  ninth_node = Node.new(9, [fourth_node])
  sixth_node = Node.new(6, [deep_fifth_node, eleventh_node])
  seventh_node = Node.new(7, [sixth_node])
  shallow_fifth_node = Node.new(5, [ninth_node])
  
  # "Trunk"
  trunk   = Node.new(2, [seventh_node, shallow_fifth_node])
  puts dfs(trunk, 11)