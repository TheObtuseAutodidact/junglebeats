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

  def count
    counter = 1
    current = @head
    until current.link == nil
      counter += 1
      current = current.link
    end
    counter
  end

  def all
    current = @head
    string = ""
    count.times do
      string += "#{current.data} "
      current = current.link
    end
    string.strip
  end

  def find(list_num, elements=1)
    temp_array = []
    current = @head
    if list_num == 0
      return current.data
    elsif count < list_num + 1
     return "Error: out of range"
    else
      (list_num).times do
        current = current.link
      end
      temp_array << current.data
      (elements - 1).times do
        current = current.link
        temp_array << current.data
      end
    end
      temp_array.join(" ")
  end

  def insert(data, position)
    data = data.split
    if data.count == 1
      data = data.join("")
      if position == 0
        prepend(data)
      else
        new_node = Node.new(data)
        current = @head
        (position - 1).times do
          current = current.link
        end
        pointer = current.link
        new_node.link = pointer
        current.link = new_node
      end
    else
      until data.empty?
        insert(data.shift, position)
        position += 1
      end
    end
  end

  #
  # def pop(last_n_elements)
  # x = (count - last_n_elements)
  # find(x)
  # #current
  #
  #   # sub_list = current.link
  #   # current.link = nil
  #   #sub_list.data
  #   # sub_list = current.data
  #   # current = @head
  #   # (count - 2).times do
  #   #   current = current.link
  #   # end
  #   # current.data = nil
  #   # sub_list
  # end

end
