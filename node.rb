# a class representing a node for the bst

class Node
  include Comparable
  attr_reader :value
  
  def initialize(value)
    @value = value
    @left_child = nil
    @right_child = nil
  end

  def <=>(other_node)
    value <=> other_node.value
  end
end
