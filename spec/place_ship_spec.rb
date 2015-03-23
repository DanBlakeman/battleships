require 'capybara/rspec'

feature 'game preparation: ' do
  scenario 'player can place a ship' do
    board = Board.new
    board.place_ship('A1')
    expect(board.grid).to eq([['Ship']])
  end
end
