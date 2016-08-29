class BankAccountProxy
  def initialize(bank_account_object)
    @subject = bank_account_object
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  # Additional functionality not related to bank account
  def check_access
    if 1 != 1
      raise "Illegal access: cannot access account."
    end
  end
end

# Other example of proxy - with blocks
class VirtualProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def method_missing(name, *args)
    s = subject
    s.send(name, *args)
  end

  def subject
    @subject = @creation_block.call unless @subject
    @subject
  end
end