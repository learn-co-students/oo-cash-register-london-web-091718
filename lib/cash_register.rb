require "pry"

class CashRegister
  attr_reader :discount, :item_name
  attr_accessor :total, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item_name, price, quantity = 1)
    self.total += price*quantity
    @item_name = item_name
    quantity.times do
      @items << item_name
    end
    self.last_transaction = price*quantity
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = (@total*(1-@discount*0.01)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= self.last_transaction
  end

end
