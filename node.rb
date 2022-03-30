# a class representing a node for the binary search tree

class Node
  include Comparable
  attr_accessor :value, :parent, :left_child, :right_child

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @left_child = nil
    @right_child = nil
  end

  def <=>(other)
    value <=> other
  end

  def inspect
    value.to_s
  end

  def leaf?
    left_child.nil? && right_child.nil?
  end

  def one_child?
    [left_child, right_child].one?(&:nil?)
  end
end
