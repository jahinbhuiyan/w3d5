class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = [] 
    end



    def parent=(parent)
        @parent = parent
        if parent != nil
            self.parent.children
        end
    end
 
    attr_reader :parent, :children, :value
end