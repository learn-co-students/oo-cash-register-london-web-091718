
class CashRegister

  attr_accessor :total
  attr_reader :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      |item| @items << title
      @last_transaction += price
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total - @total * @discount / 100.00
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
