require_relative 'pc'
require_relative 'laptop'

# Abstract factory - this pattern provides an interface for creating
# families of objects without specifying their concrete classes

class ComputerFactory
  def new_pc
    PC.new
  end

  def new_laptop
    Laptop.new
  end
end