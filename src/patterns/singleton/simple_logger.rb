require 'singleton'

class SimpleLogger
  include Singleton

  def show_message(message)
    puts "#{message}"
  end
end

SimpleLogger.instance.show_message("Hello from single obcject")

puts SimpleLogger.instance
puts SimpleLogger.instance

# Can't create an instance of singleton
SimpleLogger.new