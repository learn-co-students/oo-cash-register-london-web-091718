class CashRegister

  attr_accessor :total, :discount, :item, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount(discount)
    self.total = total - discount

end
