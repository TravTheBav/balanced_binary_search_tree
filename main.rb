require_relative 'tree'

arr = [1, 2, 3, 4, 5, 6, 7]

bst = Tree.new(arr)
p bst.root

p bst.root.left_child
p bst.root.left_child.left_child
p bst.root.left_child.right_child

p bst.root.right_child
p bst.root.right_child.left_child
p bst.root.right_child.right_child
