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
  end
end
