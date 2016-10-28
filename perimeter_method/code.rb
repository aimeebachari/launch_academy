def rectangle_perimeter(width, height = nil)
  if height.nil?
    4 * width
  else
    (2 * width) + (2 * height)
  end
end

puts rectangle_perimeter(2, 4)
