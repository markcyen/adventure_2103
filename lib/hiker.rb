class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = Hash.new { |hash, snack| hash[snack] = 0 }
    @parks_visited = []
  end

  def pack(snack, quantity)
    @snacks[snack] += quantity
  end

  def visit(park)
    @parks_visited << park
  end

  def possible_trails
    hiker_trails = []
    @parks_visited.each do |park|
      park.trails.each do |trail|
        hiker_trails << trail if trail.level == @experience_level
      end
    end
    hiker_trails
  end

  def favorite_snack
    @snacks.max_by do |snack, quantity|
      quantity
    end[0]
  end
end
