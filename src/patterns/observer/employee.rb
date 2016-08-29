require_relative 'payrole'
require 'observer'

class Employee
  include Observable

  attr_reader :name, :address
  attr_reader :salary

  def initialize(name, address, salary)
    @name = name
    @address = address
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end
end

payrole = Payrole.new
bartosz = Employee.new('Bartosz', 'Dublin', 1000)
bartosz.add_observer(payrole)

bartosz.salary = 2000

