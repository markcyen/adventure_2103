require 'rspec'
require './lib/trail'

RSpec.describe Trail do
  context '::new' do
    it 'exists' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail1).to be_instance_of(Trail)
    end
  end

  context '#initialize' do
    it 'has attributes' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail1.name).to eq('Grand Wash')
      expect(trail1.length).to eq('2.2 miles')
      expect(trail1.level).to eq(:easy)
    end
  end

  context '#convert_length' do
    it 'converts the trail length to float' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail1.convert_length).to eq(2.2)
    end
  end
end
