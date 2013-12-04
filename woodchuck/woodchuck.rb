class Woodchuck
  attr_accessor :chuck_count

  @@woodchuck_count = 0
  WOODCHUCKS = []

  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end

  def chuck_wood
    @chuck_count += 1
  end

  def self.woodchuck_count
    @@woodchuck_count
  end

  # def woodchuckers
  #   my_woodchuck.rand(10)
  # end

end

# Woodchuck.new
# Woodchuck.new
# Woodchuck.new
# Woodchuck.new
my_woodchuck = Woodchuck.new


Woodchuck::WOODCHUCKS.each do |woodchuck|
  woodchuck.chuck_wood
end

puts Woodchuck::WOODCHUCKS.inspect

#no clue.  Will return to this sometime else.