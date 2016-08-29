require_relative 'car'

class SportCar < Car
  def initialize(color)
    @color = color
  end

  def engine
    puts 'Adding engine to the sport car'
  end

  def color
    puts "Painting sport car to #{@color}"
  end
end