require './node'

class JungleBeats
  attr_reader :head, :data

  def initialize(data)
    @head = Node.new(data)
  end

  def head
    @head
  end


end
