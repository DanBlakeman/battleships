require 'capybara/rspec'
require 'board'
require 'ship'

feature 'game preparation: ' do
  let(:board) { Board.new }
  let(:ship) { Ship.new }

  scenario 'player can place a ship' do
    location = 1
    board.place(ship, location)
    expect(board.get(location)).to eq(ship)
  end

  scenario 'ship cannnot be place outside of the board' do
    expect { board.place(ship, 0) }.to raise_error 'Invalid Location'
  end
end
