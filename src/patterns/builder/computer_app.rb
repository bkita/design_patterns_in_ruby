require_relative 'computer_builder'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(10000)
computer = builder.computer
puts computer.inspect

# Building with magic method (method missing)
builder2 = ComputerBuilder.new
builder2.add_turbo_and_dvd_and_harddisk
computer2 = builder2.computer
puts computer2.inspect
