
class Product
  #
  # @@chosen_items =[]
  attr_reader :name, :price

def initialize(name, price)
  @name = name
  @price = price
  @tax_rate = 0.15
end

def total_price
  fullprice = @price * (1 + @tax_rate)
  return fullprice
end
end
