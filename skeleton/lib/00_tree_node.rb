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
        if @parent != nil
            if !@parent.children.include?(self)
                @parent.children << self
            else
                @parent.children.delete(self) until @parent.children.count(self) == 1 
            end 
        end
        if old_parent != nil
            old_parent.children.delete(self) until old_parent.children.count(self) == 0
        end
    end
 
    attr_reader :parent, :children, :value
end