require_relative 'tree'

arr = [1, 2, 3]

bst = Tree.new(arr)
p bst.root
bst.insert(4)

p bst.root.right_child.left_child
p bst.root.right_child.right_child
