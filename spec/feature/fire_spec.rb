require 'capybara/rspec'
require 'board'
require 'ship'

feature 'player can fire' do
  scenario 'at his own board' do
    board = Board.new
    player = Player.new
    location = :C, 1
    player.fire(board, *location)
    expect(board.get(*location)).to eq(:fired_at)
  end
end
