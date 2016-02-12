require "./DifferentCurrencyCodeError"

class Currency
attr_reader :amount, :currency_code ## attr_reader makes a method
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def ==(other) ## returns true if self and other are the same object
    self.amount == other.amount ## self gives you access to the current object,
    self.currency_code == other.currency_code ## the object receiving the message
  end

  def +(other)
    if self.currency_code != other.currency_code
      self.amount + other.amount
      raise DifferentCurrencyCodeError, "Error"
    end
  end

  def -(other)
    if self.currency_code != other.currency_code
      self.amount - other.amount
      raise DifferentCurrencyCodeError, "Error"
    end
  end


end
