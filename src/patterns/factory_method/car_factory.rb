require_relative 'family_car'
require_relative 'sport_car'

# Parametrized factory method — a method that can produce different
# object, depending on the symbol that is passed in.

class CarFactory
  def self.make_car(type, color)
    if type == :family_car
      FamilyCar.new(color)
    elsif type == :sport_car
      SportCar.new(color)
    else
      raise "Unknown car type: #{type}"
    end
  end
end