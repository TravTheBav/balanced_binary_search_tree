require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)

bst.build_tree(arr)
bst.insert(bst.root, 32)
bst.pretty_print

p bst.root.parent
p bst.root.left_child.parent
p bst.root.left_child.right_child.parent
p bst.root.right_child.right_child.parent