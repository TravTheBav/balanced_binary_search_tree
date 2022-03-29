require_relative 'tree'

arr = [20, 30, 40, 50, 60, 70, 80]

bst = Tree.new(arr)
p bst.level_order
p bst.level_order { |node| puts "#{node.value * 100}" }