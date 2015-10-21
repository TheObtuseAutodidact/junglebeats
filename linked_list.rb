require './node'

class LinkedList
  attr_reader :node
  def initialize(node=nil)
    @node = Node.new(node)
  end

  def head
    @node
  end

  def tail
    current = @node
    until current.link == nil
      current = current.link
    end
    current.data
  end

  def append(new_node)
    next_node = Node.new(next_node)
    tail.link = next_node
  end
end

  # def append(data)
  #   new_node = Node.new(data)
  #   tail.link = new_node
  # end



  # def count
  #   count = 0
  #   current = @node
  #   if current
  #     count += 1
  #     loop do
  #       current = current.link
  #       count += 1
  #       break if current.link == nil
  #     end
  #   count
  #   else
  #     "Empty List"
  #   end
  # end





  # def include?(item)
  #   if @node
  #     until @node.link == nil
  #       @node = @node.link
  #       if @node == item
  #         return true
  #         #break
  #       else
  #         false
  #       end
  #     end
  #   end
  # end
  #
  # def all
  #   if @node
  #     all = @node.data.to_s
  #     until @node.link == nil
  #       @node = @node.link
  #       all += " #{@node.data}"
  #     end
  #     all
  #   else
  #     ""
  #   end
  # end

  # def append(next_node)
  # puts self.tail.link #= next_node.data
  # end
