require_relative 'writer_decorator'

class DashDashWriter < WriterDecorator
  def write_to_console(text)
    @real_object.write_to_console("-- #{text}")
  end
end