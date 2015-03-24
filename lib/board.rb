class Board
  attr_reader :grid
  def initialize
    @grid = (:A..:J).inject({}) do |hash, key|
      hash.merge(key => Array.new(10))
    end
  end

  def place(ship, column, row)
    fail 'Invalid Location' unless valid_input?(column, row)
    fail 'Ships Cannot Overlap' if place_taken?(column, row)
    @grid[column][row] = ship
  end

  def get(column, row)
    @grid[column][row]
  end

  private

  def valid_column?(column)
    (:A..:J).include?(column)
  end

  def valid_row?(row)
    (0..9).include?(row)
  end

  def valid_input?(column, row)
    valid_column?(column) && valid_row?(row)
  end

  def place_taken?(column, row)
    get(column, row)
  end
end
