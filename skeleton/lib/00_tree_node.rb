require "byebug"

class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = [] 
    end



    def parent=(passed_node)
        debugger
        old_parents = @parent
        @parent = passed_node
        if @parent != nil
            @parent.children << self
            # old_parents.children.delete(self)
        end
    end
 
    attr_reader :parent, :children, :value
end