class Park
  attr_reader :name,
              :trails

  def initialize(name)
    @name = name
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(length)
    trails_by_length = []
    @trails.each do |trail|
      trails_by_length << trail if trail.convert_length < length
    end
    trails_by_length
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.convert_length
    end
  end

  def trails_by_level
    trail_hash = Hash.new { |hash, level| hash[level] = [] }
    @trails.each do |trail|
      trail_hash[trail.level] << trail.name
    end
    trail_hash
  end
end
