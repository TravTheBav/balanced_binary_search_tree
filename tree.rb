# a class representing a balanced binary search tree
require_relative 'node'

class Tree
  attr_reader :root

  def initialize(arr)
    @root = build_tree(arr.sort.uniq)
  end

  def build_tree(arr)
    return if arr.length.zero?
    return Node.new(arr.pop) if arr.one?

    start_idx = 0
    mid_idx = arr.length / 2
    end_idx = arr.length - 1
    root_node = Node.new(arr[mid_idx])
    root_node.left_child = build_tree(arr[start_idx...mid_idx])
    root_node.right_child = build_tree(arr[(mid_idx + 1)..end_idx])

    root_node
  end
end