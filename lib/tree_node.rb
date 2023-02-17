class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value, children = [])
        @value = value
        @parent = nil
        @children = children
    end

    def parent=(new_node)
        # remove self from parent's children
        if parent
            self.parent.children.delete(self)
        end

        @parent = new_node
        # add self to new parent's children
        if parent
            self.parent.children << self
        end
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        if self.children.include?(child) == false
            raise
        else
            child.parent = nil
        end
    end

end