require './node'

class LinkedList

  def initialize(name, head)
    @name = name
    @head = head
  end

  def name
    @name
  end

  def head
    @head.data
  end

end
