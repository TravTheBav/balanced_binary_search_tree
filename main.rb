require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)

p bst.height(bst.root)
bst.insert(bst.root, 25)
bst.insert(bst.root, 28)
bst.pretty_print
p bst.height(bst.root)

last_entered = bst.find(bst.root, 28)
p bst.height(last_entered)
