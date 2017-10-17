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
def position_taken(board, ind)
    if board[ind] == "X" or board[ind] == "O"
      return true
    else
      return false
    end
end
def move(array,index,value)
  array[index] = value
end
def valid_move(array, ind)
  if between?(0,8) and !position_taken(ind)
    return true
  else
    return false
  end
end
puts(valid_move(input_to_index()))
puts(position_taken(board, input_to_index))


puts("tictactoe")
