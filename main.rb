require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)
node = bst.root.left_child.right_child
bst.insert(node, 32)
bst.insert(node.left_child, 34)
bst.insert(node.left_child.right_child, 36)
bst.pretty_print
puts
bst.delete(bst.root, 30)
bst.pretty_print
