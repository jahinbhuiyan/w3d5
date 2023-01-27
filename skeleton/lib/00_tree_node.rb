require "byebug"

class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = [] 
    end



    def parent=(passed_node)
        # debugger
        old_parent = @parent
        @parent = passed_node
        if @parent != nil && !@parent.children.include?(self)
            @parent.children << self
        end
        if old_parent != nil
            old_parent.children.delete(self)
        end
    end
 
    attr_reader :parent, :children, :value
end