module DotDorWriter
  def write_to_console(text)
    super(".. #{text}")
  end
end