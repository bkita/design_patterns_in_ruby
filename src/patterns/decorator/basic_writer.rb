require_relative 'time_stamp_writer'
require_relative 'dash_dash_writer'
require_relative 'dot_dor_writer'

class BasicWriter
  def write_to_console(text)
    puts text
  end
end

# 1. Standard decorator
BasicWriter.new.write_to_console('This is sparta')
TimeStampWriter.new(BasicWriter.new).write_to_console('This is sparta')
DashDashWriter.new(BasicWriter.new).write_to_console('This is sparta')
TimeStampWriter.new(DashDashWriter.new(BasicWriter.new)).write_to_console('This is sparta')

# 2. Dynamiczne otwieranie klasy i nadpisywanie metody przy pomocy aliasu
bw = BasicWriter.new
class << bw
  alias old_write_to_console write_to_console

  def write_to_console(text)
    old_write_to_console("*** #{text}")
  end
end

bw.write_to_console('This is sparta')

# 3. Dekorowanie za pomocą modułów
bw1 = BasicWriter.new
bw1.extend(DotDorWriter)
bw1.write_to_console('This is sparta')

# The Decorator pattern is the last of the “one object stands in for another” patterns
# that we will consider in this book. The first was the Adapter pattern; it hides the fact
# that some object has the wrong interface by wrapping it with an object that has the
# right interface. The second was the Proxy pattern. A proxy also wraps another object, but not with the intent of changing the interface.Instead, the proxy has the same
# interface as the object that it is wrapping. The proxy isn’t there to translate; it is there
# to control. Proxies are good for tasks such as enforcing security, hiding the fact that an
# object really lives across the network, and delaying the creation of the real object until
# the last possible moment. And then we have the subject of this chapter, the decorator, which enables you to layer features on to a basic object