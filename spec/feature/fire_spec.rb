require 'capybara/rspec'
require 'board'
require 'ship'

feature 'player can fire' do
  scenario 'at the board' do
    board = Board.new
    location = :C, 1
    board.fire(*location)
    expect(board.get(*location)).to eq(:hit)
  end
end
