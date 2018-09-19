require "pry"

class CashRegister
  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @price = price
    @total += @price * quantity #takes total from the instance
    # binding.pry
    if quantity > 0
      quantity.times do
        @items << title
      end
    else
      @items << title
    end
  end

  def apply_discount
    self.total = @total - (@total * @discount / 100)
    if @discount > 0
       return "After the discount, the total comes to $#{self.total}."
    else
       return "There is no discount to apply."
     end
  end

  def void_last_transaction
    self.total = self.total - @price
    self.total
  end
end


p 'end'


# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction
