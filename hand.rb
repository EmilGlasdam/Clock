
class Hand

  attr_accessor :x, :y, :length, :color, :width, :z

  def initialize(options = {})
    self.x = options[:x]
    self.y = options[:y]
    self.length = options[:length]
    self.color = options[:color]
    self.width = options[:width]
    self.z = options[:z]
  end

  def draw
    line
  end

  def angle=(angle)
    rad = ((angle-90)*Math::PI)/180.0
    x_factor = Math.cos(rad)
    y_factor = Math.sin(rad)
    line.x2 = line.x1 + x_factor*length
    line.y2 = line.y1 + y_factor*length

    shadow.x2 = shadow.x1 + x_factor*length
    shadow.y2 = shadow.y1 + y_factor*length
  end

  def line
    @line ||= Line.new(
      x1: x, y1: y,
      x2: x, y2: y-length,
      width: width,
      color: color,
      z: z
    )
  end

  def shadow
    @shadow ||= Line.new(
      x1: x-(1.5*z), y1: y+(1.5*z),
      x2: y+(1.5*z), y2: y+(1.5*z)-length,
      width: width,
      color: 'gray',
      z: 2
    )
  end


end
