require 'board'

describe Board do
  it '#get should return ship at location' do
    location = 1
    subject.place(:ship, location)
    expect(subject.get(location)).to eq(:ship)
  end
end
