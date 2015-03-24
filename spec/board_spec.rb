require 'board'

describe Board do
  loc = :C, 1
  it '#get should return ship at loc' do
    subject.place(:ship, *loc)
    expect(subject.get(*loc)).to eq(:ship)
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

  it 'raises an error when trying to overlap ships' do
    subject.place(:ship, *loc)
    expect { subject.place(:ship, *loc) }.to raise_error 'Ships Cannot Overlap'
  end
end
