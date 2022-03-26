require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)

bst.build_tree(arr)
bst.insert(bst.root, 32)

root = bst.root.left_child.right_child
p root.left_child

bst.insert(bst.root, 34)
p root.left_child.right_child