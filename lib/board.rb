class Board
  def initialize
    @board = {
      :A => Array(0..9),
      :B => Array(0..9),
      :C => Array(0..9),
      :D => Array(0..9),
      :E => Array(0..9),
      :F => Array(0..9),
      :G => Array(0..9),
      :H => Array(0..9),
      :I => Array(0..9),
      :J => Array(0..9)
    }
  end

  def place(ship, column, row)
    @board[column][row] = ship
  end

  def get(column, row)
    @board[column][row]
  end
end
