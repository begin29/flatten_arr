require 'flat_arr'

describe 'FlatArr' do
  let(:flat_inst){ FlatArr.new }

  it 'returns flatten array' do
    expect(flat_inst.flatten([[1,2,[3]],4])).to eq [1,2,3,4]
  end

  it 'returns nil for string' do
    expect(flat_inst.flatten('')).to eq nil
  end
end
