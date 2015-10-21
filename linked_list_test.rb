require 'minitest'
require 'minitest/autorun'
require './node'
require './linked_list'
require './jungle_beats'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node
  end

  def test_it_initializes_with_the_data_it_holds
    node = Node.new("string")
    assert_equal "string", node.data
  end

  def test_it_returns_link
    node = Node.new('string')
    assert_equal nil, node.link
  end

end

class JungleBeatsTest < MiniTest::Test

  def test_it_initalizes_with_a_head_nodes
    jb = JungleBeats.new("first")
    assert_equal "first", jb.head.data
  end
end
#
# class LinkedListTest < Minitest::Test
#   def test_it_exists
#     assert LinkedList
#   end
#
#   def test_it_can_return_head
#     list = LinkedList.new("node1")
#     assert_equal list.node, list.head
#   end
#
#   def test_it_can_find_the_tail_in_a_one_item_list
#     list = LinkedList.new("node1")
#     assert_equal "node1", list.tail
#   end
#
#   def test_it_can_append_to_list
#     list = LinkedList.new("node1")
#     list.append("node2")
#     assert_equal "node2", list.tail
#   end

  # def test_it_can_find_tail_in_a_list_of_two_items
  #   node2 = Node.new("node2")
  #   list = LinkedList.new("node1")
  #   assert_equal node2, list.tail
  # end
#end


#
  # def test_it_can_count_the_nodes_in_an_empty_list
  #   list = LinkedList.new()
  #   assert_equal "Empty List", list.count
  # end
#
#   def test_it_can_count_a_list_of_one_node
#     node = Node.new('string')
#     list = LinkedList.new(node)
#     assert_equal 1, list.count
#   end
#
#   def test_it_can_count_a_list_of_two_items
#     node2 = Node.new("node2")
#     node = Node.new("string", node2)
#     list = LinkedList.new(node)
#     assert_equal 2, list.count
#   end
# end
#
#   def test_it_can_count_a_list_of_many_items
#     node4 = Node.new("node4")
#     node3 = Node.new("node3", node4)
#     node2 = Node.new("node2", node3)
#     node1 = Node.new("node1", node2)
#     list = LinkedList.new(node1)
#     assert_equal 4, list.count
#   end
#
#   def test_it_returns_the_last_item_in_list
#     node4 = Node.new("node4")
#     node3 = Node.new("node3", node4)
#     node2 = Node.new("node2", node3)
#     node1 = Node.new("node1", node2)
#     list = LinkedList.new(node1)
#     assert_equal node4, list.tail
#   end
#
#   def test_it_returns_a_bool_if_item_included
#     node4 = Node.new("node4")
#     node3 = Node.new("node3", node4)
#     node2 = Node.new("node2", node3)
#     node1 = Node.new("node1", node2)
#     list = LinkedList.new(node1)
#     assert_equal true, list.include?(node3)
#   end
#

#
#   def test_all_produces_a_string_of_all_nodes
#     node4 = Node.new("node4")
#     node3 = Node.new("node3", node4)
#     node2 = Node.new("node2", node3)
#     node1 = Node.new("node1", node2)
#     list = LinkedList.new(node1)
#     assert_equal "node1 node2 node3 node4", list.all
#   end

  # def test_it_appends_a_new_node_on_the_end_of_list
  #   node2 = Node.new("node2")
  #   node1 = Node.new("node1", node2)
  #   list = LinkedList.new(node1)
  #   node3 = Node.new("node3")
  #   list.append(node3)
  #   assert_equal "node1 node2 node3", list.all
  # end








#end
