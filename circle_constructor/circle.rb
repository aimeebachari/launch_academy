class Circle
  attr_reader :radius

  def initialize(input)
    @radius =
      if input.kind_of?(Hash)
        input[:radius] || (input[:diameter] / 2)
      else
        input
      end
  end
end

new_circle = Circle.new({diameter: 12})
