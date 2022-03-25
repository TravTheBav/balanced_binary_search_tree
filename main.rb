require_relative 'node'

node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(2)
p node_1 <=> node_2
p node_2 <=> node_1
p node_2 <=> node_3