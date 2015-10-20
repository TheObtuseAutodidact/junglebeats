class Node

  def initialize(data)
    @data = data
    @link = nil
  end

  def data
    @data
  end

  def link
    @link
  end

  def has_link? # maybe list's responsiblilty
    @link ? true : false
  end

end
