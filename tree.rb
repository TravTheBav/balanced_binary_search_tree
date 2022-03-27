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
  def insert(node, value)
    case node <=> value
    when 1 # search left
      if node.left_child.nil?
        node.left_child = Node.new(value)
        node.left_child.parent = node
      else
        insert(node.left_child, value)
      end
    else # search right
      if node.right_child.nil?
        node.right_child = Node.new(value)
        node.right_child.parent = node
      else
        insert(node.right_child, value)
      end
    end
  end

  def delete(node, value)
    return nil if node.nil? # entire tree has been traversed and no node was found

    case (node <=> value)
    when -1 # when node is less than value, recurse through right half
      delete(node.right_child, value)
    when 1 # when node is greater than value, recurse through left half
      delete(node.left_child, value)
    when 0 # node is found
      if node.leaf?
        delete_leaf_node(node)
      elsif node.one_child?
        delete_one_child_node(node)
      else # node has multiple children
        right_subtree = node.right_child
        node_to_delete = delete_multi_child_node(right_subtree)
        node.value = node_to_delete.value
        right_subtree.left_child = node_to_delete.right_child if node_to_delete.right_child
      end
    end
  end

  # helper method for deleting node with no children
  def delete_leaf_node(node)
    if (node.parent <=> node.value) == 1
      node.parent.left_child = nil
    else
      node.parent.right_child = nil
    end
  end

  # helper method for deleting node with 1 child
  def delete_one_child_node(node)
    case (node.parent <=> node.value)
    when 1 # when parent node is greater than child
      if node.left_child
        node.parent.left_child = node.left_child
      else
        node.parent.left_child = node.right_child
      end
    else # when parent node is less than child
      if node.left_child
        node.parent.right_child = node.left_child
      else
        node.parent.right_child = node.right_child
      end
    end
  end

  # helper method for deleting node with 2 children
  def delete_multi_child_node(node)
    return node if node.left_child.nil?

    delete_multi_child_node(node.left_child)
  end
end
