require 'ship'
require 'capybara/rspec'

feature 'ships can be created and destroyed' do
  scenario 'ships can have different sizes' do
    ship = Ship.new 3
    expect(ship.size).to eq 3
  end
end
