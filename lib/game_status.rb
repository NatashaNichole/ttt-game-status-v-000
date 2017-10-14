# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Bottom column
  [0,4,8], #Diagonal from top left to bottom right
  [2,4,6], ]#Diagonal form top right to bottom Left

def won?(board)
WIN_COMBINATIONS.each do |win_combination|
  window1 = board[win_combination[0]]
  window2 = board[win_combination[1]]
  window3 = board[win_combination[2]]
  if (window1 == "X" && window2 == "X" && window3 == "X") ||
     (window1 == "O" && window2 == "O" && window3 == "O")
    return win_combination
  end
end
return false
end

def full?
  
end
