require 'rspec'

require_relative 'sequence.rb'

describe 'sequence testing' do
  it 'class initializing' do
    s = Sequence.new(1)

    expect(s.element).to eq('1')
  end

  it 'calls custom_next method for element of sequence' do
    s = Sequence.new(1)

    expect(s.custom_next.element).to eq('11')
  end

  it 'calls custom_next method several times' do
    s = Sequence.new(1)

    expect(s.custom_next.custom_next.element).to eq('21')
  end
end
