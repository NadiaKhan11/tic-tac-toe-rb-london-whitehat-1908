WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5], 
  [6,7,8], 
  [0,3,6], 
  [1,4,7], 
  [2,5,8], 
  [0,4,8], 
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] 
    position_2 = board[win_index_2] 
    position_3 = board[win_index_3] 
    if (position_1 =="X" && position_2 == "X" && position_3 == "X") or (position_1 == 'O' && position_2 == "O" && position_3 == "O") then
      return win_combination
    else
      false
    end
  end
  false
end

def full?(board)
  board.each { |crosses|
    if crosses == " "
      return false
    end      
  }
    
  return true 
end 

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
   if draw?(board) || won?(board) 
     return true
   end
end  

def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board = [" "," "," "," "," X "," "," "," "," "]

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index) then
     return true
   else
     return false
   end
end 

def position_taken?(board, index)
   if board [index] == " " 
     return false
   end
     return true
  
end

def current_player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
end

def turn_count(board)
    counter = 0
   board.each do |spaces|
      if spaces == "X" || spaces == "O"
         counter += 1
      end
   end
   counter
end

def current_player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
end

def input_to_index(input)
  input.to_i - 1 
end  

def move(board, index, character)
  board [index] =character
end  
  
def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  end
end


