require_relative "poly_tree_node.rb"

class KnightPathFinder



    attr_reader :root_node

    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
    end










end

if $PROGRAM_NAME == __FILE__
     a = KnightPathFinder.new([0,0])
     p a.root_node.value
end
