require 'capybara/rspec'
require 'board'
require 'ship'

feature 'player can fire' do
  scenario 'at his own board' do
    board = Board.new
    location = :C, 1
    board.fire(*location)
    expect(board.get(*location)).to eq(:fired_at)
  end
end
