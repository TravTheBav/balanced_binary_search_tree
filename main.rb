require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)
bst.insert(bst.root, 25)
bst.insert(bst.root, 27)
bst.insert(bst.root, 28)
bst.pretty_print
p bst.balanced?

3.times { puts }

bst.rebalance
bst.pretty_print
p bst.balanced?
