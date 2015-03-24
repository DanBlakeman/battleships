require 'board'

describe Board do
  xit '#get should return ship at location' do
    location = 1
    subject.place(:ship, location)
    expect(subject.get(location)).to eq(:ship)
  end

  it 'is a 10x10 grid' do
    grid = subject.grid
    expect(grid.length).to eq 10
    expect(grid[:A].length).to eq 10
  end

  it 'does not allow values outside of column range' do
    expect { subject.place(:ship, :K, 1) }.to raise_error 'Invalid Location'
  end

  it 'does not allow values outside of row range' do
    expect { subject.place(:ship, :A, 10) }.to raise_error 'Invalid Location'
  end

  it 'does not allow values outside of row and column range' do
    expect { subject.place(:ship, :P, 10) }.to raise_error 'Invalid Location'
  end
end
