# a simple script showcasing the binary search tree
require_relative 'tree'

# a balanced binary search tree with 15 random numbers
arr = Array.new(15) { rand(1..100) }
bst = Tree.new(arr)
root_node = bst.root
bst.pretty_print
puts "Tree balanced: #{bst.balanced?}"

3.times { puts }

# all 4 tree traversal methods
puts "level-order: #{bst.level_order}"
puts "pre-order: #{bst.preorder(root_node)}"
puts "post-order: #{bst.postorder(root_node)}"
puts "in-order: #{bst.inorder(root_node)}"

3.times { puts }

# adding 5 more random numbers to the tree makes it unbalanced
puts 'adding new nodes...'
new_nums = Array.new(5) { rand(101..150) }
new_nums.each { |num| bst.insert(root_node, num) }
bst.pretty_print
puts "Tree balanced: #{bst.balanced?}"

3.times { puts }

# time to rebalance the tree
puts 'rebalancing tree...'
bst.rebalance
puts "level-order: #{bst.level_order}"
puts "pre-order: #{bst.preorder(root_node)}"
puts "post-order: #{bst.postorder(root_node)}"
puts "in-order: #{bst.inorder(root_node)}"

3.times { puts }

bst.pretty_print
puts "Tree balanced: #{bst.balanced?}"
