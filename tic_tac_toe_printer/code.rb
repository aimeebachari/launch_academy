def print_cell(letter)
  if letter == nil
     " "
  else
     letter
  end
end

def print_grid(board)
  board.each_with_index do |array, index|
    puts " #{print_cell(array[0])} | #{print_cell(array[1])} | #{print_cell(array[2])}"
    if index == 0 || index == 1
      puts "-----------"
    end
  end
end


board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

print_grid(board_a)
puts "=========="
print_grid(board_b)
