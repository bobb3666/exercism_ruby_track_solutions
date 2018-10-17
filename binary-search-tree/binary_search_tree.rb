class Bst

  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(value)
    if value > @data
      @right = modify(@right, value)
    else
      @left = modify(@left, value)
    end
  end

  def modify(node, value)
    if node.nil?
      node = Bst.new value
    else
      node.insert value
    end
    node
  end

  def each(&block)
    left.each(&block) unless left.nil?
    block.call(self.data)
    right.each(&block) unless right.nil?
  end
end