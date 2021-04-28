class Trail
  attr_reader :name,
              :length,
              :level

  def initialize(trail_data)
    @name = trail_data[:name]
    @length = trail_data[:length]
    @level = trail_data[:level]
  end

  def convert_length
    @length.split[0].to_f
  end
end
