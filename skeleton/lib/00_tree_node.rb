class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = [] 
    end



    def parent=(node)
        @parent = node
        if @parent.parent != nil
            @parent.children = node.children
        end
    end
 
    attr_reader :parent, :children, :value
end