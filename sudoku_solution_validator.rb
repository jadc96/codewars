def validSolution(board)
  # checking every row
  board.each {|array| return false if !valid_answers(array)}

  # checking every column
  for i in (0..8)
    column = []
    board.each do |array|
      column << array[i]
    end
    return false if !valid_answers(column)
  end

  check_square(board, 0, 2)
  check_square(board, 3, 5)
  check_square(board, 6, 8)
end

def valid_answers(array)
  array = array.select {|e| e > 0 && e <= 9}
  array.uniq.length == 9
end

def check_square(board, a, b)
  square_one, square_two, square_three = [], [], []
  # checking answers
  #   - by group of three rows (a..b)
  #      - by group of three consecutives indexes inside these rows
  for i in (a..b)
    array = board[i]
    for j in (0..8)
      if j >= 0 && j < 3
        square_one << array[j]
      elsif j >= 3 && j < 6
        square_two << array[j]
      elsif j >= 6 && j <= 8
        square_three << array[j]
      end
    end
  end
  valid_answers(square_one) && valid_answers(square_two) && valid_answers(square_three)
end
