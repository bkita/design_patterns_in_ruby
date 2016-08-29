require_relative 'car'

class FamilyCar < Car
  def initialize(color)
    @color = color
  end

  def engine
    puts 'Adding engine to the family car'
  end

  def color
    puts "Painting family car to #{@color}"
  end
end