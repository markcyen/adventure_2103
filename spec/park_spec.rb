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
end
