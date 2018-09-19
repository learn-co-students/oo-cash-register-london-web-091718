require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :price, :last_item_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_amount = 0
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times {|number| items << item}
    self.last_item_amount = price
  end

  def apply_discount
    if discount > 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      'There is no discount to apply.'
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_item_amount
  end

end

# binding.pry
