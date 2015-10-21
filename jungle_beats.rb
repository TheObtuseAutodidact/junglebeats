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




end
