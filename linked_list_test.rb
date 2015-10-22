require 'minitest'
require 'minitest/autorun'
require './node'
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

  def test_it_can_call_head
    jb = JungleBeats.new("first")
    assert_equal "first", jb.head.data
  end

  def test_it_returns_tail
    jb = JungleBeats.new("first")
    assert_equal "first", jb.tail.data
  end

  def test_it_can_append_new_node_to_tail
    jb = JungleBeats.new("first")
    jb.append("second")
    assert_equal "second", jb.tail.data
  end

  def test_if_tail_is_found_with_more_than_one_node_in_list
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    assert_equal "third", jb.tail.data
  end

  def test_if_include_can_find_node
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    assert_equal true, jb.include?("second")
  end

  def test_if_include_returns_false_if_node_not_present
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    assert_equal false, jb.include?("fourth")
  end

  def test_if_it_can_prepend_one_node
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    assert_equal "zero", jb.head.data
  end

  def test_it_can_count_number_of_nodes_in_list
    jb = JungleBeats.new("first")
    assert_equal 1, jb.count
  end

  def test_it_can_count_a_few_more_nodes_in_list
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    assert_equal 3, jb.count
  end

  def test_if_all_returns_string_of_node_data_attributes
    jb = JungleBeats.new("first")
    assert_equal "first", jb.all
  end

  def test_if_all_returns_string_of_all_node_data_attributes
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    assert_equal "zero first second third", jb.all
  end

  def test_it_can_find_a_node
    jb = JungleBeats.new("first", )
    assert_equal "first", jb.find(0, 1)
  end

  def test_it_finds_the_second_element
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    assert_equal "first second", jb.find(1, 2)
  end

  def test_find_returns_an_error_if_out_of_range
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    assert_equal "Error: out of range", jb.find(5)
  end

  def test_find_returns_correct_node_from_list
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    assert_equal "second", jb.find(2)
  end

  def test_it_inserts_a_single_element_into_varied_position
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("inserted", 2)
    assert_equal "zero first inserted second third", jb.all
  end

  def test_it_inserts_a_single_element_into_varied_position
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("inserted", 1)
    assert_equal "zero inserted first second third", jb.all
  end

  def test_it_inserts_a_single_element_into_varied_position
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("inserted", 3)
    assert_equal "zero first second inserted third", jb.all
  end

  def test_it_inserts_a_single_element_into_varied_position
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("inserted", 0)
    assert_equal "inserted zero first second third", jb.all
  end

  def test_insert_for_two_items
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("two beats", 2)
    assert_equal "zero first two beats second third", jb.all
  end

  def test_insert_for_four_items
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("larry moe curly shemp", 1)
    assert_equal "zero larry moe curly shemp first second third", jb.all
  end

  def test_multiple_insertion_at_position_zero
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("larry moe curly shemp", 0)
  end

  def test_multiple_insertion_at_position_zero
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("larry moe curly shemp", 0)
    assert_equal "curly", jb.find(2,1)
  end

  def test_multiple_insertion_at_position_zero
    jb = JungleBeats.new("first")
    jb.append("second")
    jb.append("third")
    jb.prepend("zero")
    jb.insert("larry moe curly shemp", 0)
    assert_equal 8, jb.count
  end



end
