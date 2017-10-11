module ListingsHelper
# Takes 10000 cents and outputs $100.00
  def format_cents(cents)
    money = Money.new(cents, 'AUD')
    money.format
  end

end
