require_relative 'writer_decorator'

class TimeStampWriter < WriterDecorator
  def write_to_console(text)
    @real_object.write_to_console("#{Time.new}: #{text}")
  end
end