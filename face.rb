
class Face

  attr_accessor :x, :y, :radius

  def initialize(options = {})
    self.x = options[:x]
    self.y = options[:y]
    self.radius = options[:radius]
  end

  def draw
    outer_rim
    inner_rim
    center_dot
  end

  def outer_rim
    @outer_rim ||= Circle.new(
      x: x, y: y,
      radius: radius,
      sectors: 128,
      color: 'black',
      z: 10
    )
  end

  def inner_rim
    @inner_rim ||= Circle.new(
      x: x, y: y,
      radius: radius-10,
      sectors: 128,
      color: 'white',
      z: 11
    )
  end

  def center_dot
    @center_dot ||= Circle.new(
      x: x, y: y,
      radius: 5,
      sectors: 32,
      color: 'black',
      z: 12
    )
  end

end
