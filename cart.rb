require_relative 'product.rb'


class Cart
    @@items = []

  def add_to_cart(name, price)
    item = Product.new(name, price)
    @@items << item
    return item
  end

  def remove_from_cart(name)
    @@items.each do |i|
    if i.name == name
        @@items.delete(i)
      end
    end
  end

  def sum_before_tax
    sum = 0
    @@items.each{|i| sum += i.price }
    return sum
  end
  def sum_after_tax
    sum = 0
    @@items.each{|i| sum += i.total_price }
    return sum
  end
end

my_cart = Cart.new
my_cart.add_to_cart('milk',3.5)
my_cart.add_to_cart('bread',2.5)
