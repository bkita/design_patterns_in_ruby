require_relative 'motherboard'

class Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_accessor :drives

  def initialize(display=:ctr, motherboard=Motherboard.new, drives=[])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end