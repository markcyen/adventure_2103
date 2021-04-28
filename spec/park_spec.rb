require 'rspec'
require './lib/trail'
require './lib/park'

RSpec.describe Park do
  context '::new' do
    it 'exists' do
      park1 = Park.new('Capitol Reef')

      expect(park1).to be_instance_of(Park)
    end
  end

  context '#initialize' do
    it 'has attributes' do
      park1 = Park.new('Capitol Reef')

      expect(park1.name).to eq('Capitol Reef')
      expect(park1.trails).to eq([])
    end

    it 'has trails added' do
      park1 = Park.new('Capitol Reef')
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
      park1.add_trail(trail1)
      park1.add_trail(trail2)

      expected = [trail1, trail2]
      expect(park1.trails).to eq(expected)
    end
  end
end
