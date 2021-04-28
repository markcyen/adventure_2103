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

  context '#parks_visited' do
    it 'lists parks visited by hiker, currently none' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker.parks_visited).to eq([])
    end

    it 'lists a couple of parks visited by hiker' do
      hiker = Hiker.new('Dora', :moderate)
      park1 = Park.new('Capitol Reef')
      park2 = Park.new('Bryce Canyon')
      hiker.visit(park1)
      hiker.visit(park2)

      expected = [park1, park2]
      expect(hiker.parks_visited).to eq(expected)
    end
  end
end
