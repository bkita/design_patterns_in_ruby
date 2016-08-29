require 'forwardable'

class WriterDecorator
  extend Forwardable

  def_delegators :@real_object, :write_to_console

  def initialize(real_object)
    @real_object = real_object
  end
end