require 'rspec'
require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe Hiker do
  context '::new' do
    it 'exists' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker).to be_instance_of(Hiker)
    end
  end

  context '#initialize' do
    it 'has attributes' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker.name).to eq('Dora')
      expect(hiker.experience_level).to eq(:moderate)
      expect(hiker.snacks).to eq({})
    end
  end

  context '#pack' do
    it 'packs snacks' do
      hiker = Hiker.new('Dora', :moderate)
      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)

      expected = {
        "water" => 1,
        "trail mix" => 3
      }
      expect(hiker.snacks).to eq(expected)
    end
  end
end
