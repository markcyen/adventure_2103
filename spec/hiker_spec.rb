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
end
