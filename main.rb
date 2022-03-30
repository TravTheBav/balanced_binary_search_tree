require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)
bst.insert(bst.root, 25)
bst.pretty_print

node = bst.find(bst.root, 30)
p bst.depth(node)
p bst.height(node)
