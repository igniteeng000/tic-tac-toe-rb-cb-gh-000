def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}"
end

board = [" ","","","X","",""," ","",""]
display_board(board)
#display_board(board)
def input_to_index()
  ind = gets.chomp.to_i-1
  return ind
end
index = input_to_index()
board[index] = 'X'
display_board(board)
def move(array,index,value)
  array[index] = value
end

def position_taken(ind)
    if board[ind] == "X" or board[ind] == "O"
      return false
    else
      return true
end

puts("tictactoe")
