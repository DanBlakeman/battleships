require 'capybara/rspec'
require 'board'
require 'ship'

feature 'game preparation: ' do
  let(:board) { Board.new }
  let(:ship) { Ship.new }

  scenario 'player can place a ship' do
    location = :A, 1
    board.place(ship, *location)
    expect(board.get(*location)).to eq(ship)
  end

  # scenario 'ship cannnot be placed outside of the 10 x 10 board' do
  #   expect { board.place(ship, :K, 1) }.to raise_error 'Invalid Location'
  #   expect { board.place(ship, :A, 10) }.to raise_error 'Invalid Location'
  # end

  xscenario 'can face ship right' do
    size = 2
    ship = Ship.new(size)
    board = Board.new
    location = 3
    direction = 'right'
    board.place(ship, location, direction)
    expect(board[location..location + ship.size - 1].count(ship)).to eq size
  end
end
