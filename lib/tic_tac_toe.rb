def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}"
end

def input_to_index()
  ind = gets.chomp.to_i-1
  return ind
end

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
  if ind.between?(0,8) and !position_taken(array,ind)
    return true
  else
    return false
  end
end

def turn(array)
  ind = input_to_index()
  if valid_move(array,ind)
    move(array,index,value)
    display_board(array)
    return true
  else
    turn(array)

  end
end

def turn_count(array)
  if turn(array)
    turns+=1
  end
end
def current_player(array, turn_count)
  if turn_count%2==0
    return "O"
  else
    return "X"
  end
end
board = [" ","","","X","","","O","",""]
display_board(board)
#display_board(board)
#display_board(board)
##puts(position_taken(board, input_to_index))
print(turn(board))

#