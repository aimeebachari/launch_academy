class Rectangle
  attr_reader :width, :height

  def initialize(width, height = nil)
    @width = width
    @height =
      if height.nil?
        width
      else
        height
      end
  end

  def area
    @width * @height
  end

end
#
new_rectangle = Rectangle.new(5)

require 'pry'
binding.pry
