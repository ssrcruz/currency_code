# require "./DifferentCurrencyCodeError"
require "./different_currency_code_error.rb"

class Currency
attr_reader :amount, :currency_code ## attr_reader makes a method
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def ==(other) ## returns true if self and other are the same object
    if self.amount == other.amount ## self gives you access to the current object,
      self.amount == other.amount
    end## the object receiving the message
  end

  def +(other) ## ruby operator overloading, allowing you to define how operators will work.
    if self.currency_code == other.currency_code
      Currency.new(amount + other.amount, currency_code)
    else
      raise DifferentCurrencyCodeError, "ERROR, Different Currency Code"
    end
  end

  def -(other)
    if self.currency_code == other.currency_code
     Currency.new(amount - other.amount, currency_code)
    else
      raise DifferentCurrencyCodeError, "ERROR, Different Currency Code"
    end
  end

  def *(num)
    Currency.new(amount * num, currency_code)
  end


end
