require "./currency.rb"
require "minitest/autorun"
require "minitest/pride"

class TestCurrency < Minitest::Test

  def test_create_amount_and_currency_code
    assert Currency.new("","")
  end

  def test_should_equal_currency_object
    colombian_peso = Currency.new(100, "COP")
    other_colombian_peso = Currency.new(100, "COP")

    assert_equal true, colombian_peso == other_colombian_peso
  end

  def test_should_add_with_same_currency_code
    colombian_peso = Currency.new(200, "COP")
    other_colombian_peso = Currency.new(300, "COP")

    assert_equal 500, colombian_peso.amount + other_colombian_peso.amount
  end

end
