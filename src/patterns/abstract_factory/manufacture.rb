require_relative 'computer_factory'

class Manufacture
  def initialize(number_of_computers, computer_factory)
    @computer_factory = computer_factory

    @pcs = []
    number_of_computers.times do
      @pcs << @computer_factory.new_pc
    end

    @laptops = []
    number_of_computers.times do
      @laptops << @computer_factory.new_laptop
    end
  end
end

Manufacture.new(10, ComputerFactory.new)