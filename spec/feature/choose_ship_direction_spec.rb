require 'capybara/rspec'
require 'ship'
require 'board'

feature 'create layout of ships' do
  scenario 'can face ship right' do
    size = 2
    ship = Ship.new(size)
    board = Board.new
    location = 3
    direction = 'right'
    board.place(ship, location, direction)
    expect(board[location..location + ship.size - 1].count(ship)).to eq size
  end
end


a[1][2][3]
b[1][2][3]
c[1][2][3]

