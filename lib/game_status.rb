# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

  def won?(board)  WIN_COMBINATIONS.detect do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
       return win_combination
      end
      if position_1 == "O" && position_2 == "O" && position_3 == "O"
     return   win_combination
      end
    end
  else
    false
  end
def full?(board)
  board.all? do |taken|
    taken == "X" || taken == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else !full?(board) && !won?(board)
    return false
  end
end
#returns true if board is full but not won
#returns false if board has not been won and board is not full

def over?(board)
if draw?(board) || won?(board) || full?(board)
  return true
end
end
#returns true if board has been won, draw or full

def winner(board)
   if !won?(board)
     return nil
   elsif won?(board) || position_1 == "O" && position_2 == "O" && position_3 == "O"
     return "O"
   if won?(board) || position_1 == "X" && position_2 == "X" && position_3 == "X"
     return "X"
   end
end
