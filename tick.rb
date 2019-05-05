class Tick

  attr_accessor :x, :y, :length, :radius, :angle, :color, :width

  def initialize(options = {})
    self.x = options[:x]
    self.y = options[:y]
    self.length = options[:length] || 5
    self.radius = options[:radius] || 20
    self.angle = options[:angle] || 0
    self.color = options[:color] || 'black'
    self.width = options[:width] || 2
  end

  def draw
    calculate
  end

  def line
    @line ||= Line.new(
      x1: x, y1: y,
      x2: x, y2: y-length,
      width: width,
      color: color,
      z: 2
    )
  end

  private

  def calculate
    rad = ((angle-90)*Math::PI)/180.0
    x_factor = Math.cos(rad)
    y_factor = Math.sin(rad)

    line.x1 = x + x_factor*(radius - length)
    line.y1 = y + y_factor*(radius - length)
    line.x2 = x + x_factor*radius
    line.y2 = y + y_factor*radius
  end

end
