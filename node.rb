# a class representing a node for the bst

class Node
  include Comparable
  attr_accessor :left_child, :right_child
  attr_reader :value
  
  def initialize(value)
    @value = value
    @left_child = nil
    @right_child = nil
  end

  def <=>(other)
    value <=> other
  end

  def inspect
    value.to_s
  end
end
