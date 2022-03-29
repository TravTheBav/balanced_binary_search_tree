require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)

puts 'Inorder traversal:'
p bst.inorder(bst.root)
bst.inorder(bst.root) { |node| print "#{node.value * 100} " }
2.times { puts }

puts 'Preorder traversal'
p bst.preorder(bst.root)
bst.preorder(bst.root) { |node| print "#{node.value * 100} " }
2.times { puts }

puts 'Postorder traversal'
p bst.postorder(bst.root)
bst.postorder(bst.root) { |node| print "#{node.value * 100} " }
2.times { puts }
