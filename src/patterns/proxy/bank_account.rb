require_relative 'bank_account_proxy'

class BankAccount
  attr_reader :balance

  def initialize(starting_balance = 0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

# myAccount = BankAccount.new
# myAccount.deposit(100)
# puts myAccount.balance

proxy = BankAccountProxy.new(BankAccount.new)
proxy.deposit(1000)
puts proxy.balance

# proxy = VirtualProxy.new { BankAccount.new }
# proxy.deposit(1000)lease let me know if you need more details about this.
# puts proxy.balance