class Board
  def initialize
    @board = []
  end

  def place(ship, location)
    @board[location] = ship
  end

  def get(location)
    @board[location]
  end
end
