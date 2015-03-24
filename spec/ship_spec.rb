require 'ship'

describe Ship do
  xit 'takes a size as an argument' do
    ship = Ship.new 3
    expect(ship.size).to eq 3
  end
end
