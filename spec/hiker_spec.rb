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
end
