class Point
  attr_accessor :x,:y
  def initialize(x,y)
    @x, @y = x,y
  end
  def +(point_to_be_added)
    raise TypeError, "Point type argument expected" unless point_to_be_added.is_a? Point
    Point.new(@x + point_to_be_added.x , @y + point_to_be_added.y)
    #   rescue

  end

  def -@
    Point.new(-@x,-@y)
  end

  def *(scalar)
    Point.new(@x * scalar, @y * scalar)
  end



  def to_s
    "(#@x,#@y)"
  end
  # accessor methods
=begin
  def x
    @x
  end
  def y
    @y
  end
=end
end

p = Point.new(5,4)
puts p.class
puts (p.is_a? Point)
puts p.to_s
puts p.x
puts p.+(Point.new(7,11))
#puts p.+(9)
puts p.-@
puts p*6
