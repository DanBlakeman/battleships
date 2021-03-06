require 'board'

describe Board do
  location = :C, 1
  it '#get should return ship at loc' do
    subject.place(:ship, *location)
    expect(subject.get(*location)).to eq(:ship)
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

  it 'can fire at a location' do
    location = :C, 1
    subject.fire(*location)
    expect(subject.get(*location)).to eq(:hit)
  end

  it 'raises an error when trying to overlap ships' do
    subject.place(:ship, *location)
    expect do
      subject.place(:ship, *location)
    end.to raise_error 'Ships Cannot Overlap'
  end
end
