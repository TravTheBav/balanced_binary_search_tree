# a class representing a balanced binary search tree
require_relative 'node'

class Tree
  attr_reader :root

  def initialize(arr)
    @root = build_tree(arr.sort.uniq)
  end

  # credit for pretty_print goes to someone on the TOP discord
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_child, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_child
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left_child, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_child
  end

  def build_tree(arr, parent_node=nil)
    return if arr.length.zero?
    return Node.new(arr.pop, parent_node) if arr.one?

    start_idx = 0
    mid_idx = arr.length / 2
    end_idx = arr.length - 1
    root_node = Node.new(arr[mid_idx], parent_node)
    root_node.left_child = build_tree(arr[start_idx...mid_idx], root_node)
    root_node.right_child = build_tree(arr[(mid_idx + 1)..end_idx], root_node)

    root_node
  end

  # inserts a new node with value to the correct leaf node
  def insert(root, value)
    case root <=> value
    when 1
      if root.left_child.nil?
        root.left_child = Node.new(value)
      else
        insert(root.left_child, value)
      end
    else
      if root.right_child.nil?
        root.right_child = Node.new(value)
      else
        insert(root.right_child, value)
      end
    end
  end

  def delete(root, value)
    
  end

end