require 'capybara/rspec'
require 'board'
require 'ship'

feature 'game preparation: ' do
  scenario 'player can place a ship' do
    board = Board.new
    ship = Ship.new
    location = 1
    board.place(ship, location)
    expect(board.get(location)).to eq(ship)
  end
end
