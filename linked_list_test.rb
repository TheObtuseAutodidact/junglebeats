require 'minitest'
require 'minitest/autorun'
require './node'
require './linked_list'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node
  end

  def test_it_initializes_with_the_data_it_holds
    node = Node.new("string")
    assert_equal "string", node.data
  end

  def test_it_has_link
    node = Node.new("string")
    assert_equal false, node.has_link?
  end

  def test_it_returns_link
    node = Node.new('string')
    assert_equal nil, node.link
  end

end

class LinkedListTest < Minitest::Test

  def test_it_exists
    assert LinkedList
  end

  def test_it_takes_and_and_returns_a_name
    node = Node.new("string")
    list = LinkedList.new("Linky", node)
    assert_equal "Linky", list.name
  end

  def test_it_takes_a_node
    node = Node.new("string")
    list = LinkedList.new("list", node)
    assert_equal "string", list.head
  end

  def test_it_can_ask_if_node_has_a_link
    node = Node.new("string")
    list = LinkedList.new("list", node)
    assert_equal false, node.has_link?
  end









end
