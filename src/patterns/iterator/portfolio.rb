class Portfolio
  include Enumerable

  def initialize
    @accounts = []
  end

  def each(&block)
    @accounts.each(&block)
  end

  def add_account(account)
    @accounts << account
  end
end

# By simply mixing the Enumerable module into Portfolio and defining an
# each method, we have equipped Portfolio with all kinds of Enumerable goodness.
# For example, we can now find out whether any of the accounts in our portfolio has a
# balance of at least $2,000:

#     my_portfolio.any? {|account| account.balance > 2000}

# We can also find out whether all of our accounts contain at least $10:

#     my_portfolio.all? {|account| account.balance > = 10}