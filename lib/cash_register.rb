class CashRegister

  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @items << item
  end

  def apply_discount(discount)
    self.total = total - discount

end
