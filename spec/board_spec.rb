require 'board'

describe Board do
  it 'responds to #place' do
    expect(subject).to respond_to :place
  end

  it '#place takes two arguments' do
    expect { subject.place(:arg1, :arg2) }.not_to raise_error
  end

  it { is_expected.to respond_to :get }

  it '#get takes only one argument' do
    expect { subject.get(:arg1) }.not_to raise_error
  end

  it '#get should return ship at location' do
    location = 1
    ship = :ship
    subject.place(ship, location)
    expect(subject.get(location)).to eq(ship)
  end
end
