require 'rspec'
require './lib/trail'

RSpec.describe Trail do
  context '::new' do
    it 'exists' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail1).to be_instance_of(Trail)
    end
  end
end
