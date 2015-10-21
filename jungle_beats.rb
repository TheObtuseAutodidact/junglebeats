require './node'

class JungleBeats
  attr_reader :head, :data

  def initialize(data, link=nil)
    @head = Node.new(data,link=nil)
  end

  def head
    @head
  end

  def tail
    current = @head
    until current.link == nil
      current = current.link
    end
    current
  end

  def append(data)
    new_node = Node.new(data)
    tail.link = new_node
  end

  def include?(string)
    current = @head
    until current.link == nil
      current = current.link
      if current.data == string
        return true
      else
        return false
      end
    end
  end

  def prepend(data)
    new_head = Node.new(data)
    current = @head
    new_head.link = @head
    @head = new_head
  end





end
