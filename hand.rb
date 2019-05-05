
class Hand

  attr_accessor :x, :y, :length, :color

  def initialize(options = {})
    self.x = options[:x]
    self.y = options[:y]
    self.length = options[:length]
    self.color = options[:color]
  end

  def draw
    line
  end

  def angle=(angle)
    rad = ((angle-90)*Math::PI)/180.0
    x_factor = Math.cos(rad)
    y_factor = Math.sin(rad)
    line.x2 = x + x_factor*length
    line.y2 = y + y_factor*length
  end

  def line
    @line ||= Line.new(
      x1: x, y1: y,
      x2: x, y2: y-length,
      width: 2,
      color: color,
      z: 20
    )
  end

end
