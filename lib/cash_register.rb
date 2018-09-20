require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :title, :last_transaction

  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @items = []
    @last_transaction = 0;
  end

  def add_item(title, price, quantity=1)
    @title = title
    @quantity = quantity
    quantity.times do |item|
      @items << title
    end
    @last_transaction += price
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100-@discount)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= last_transaction
  end

end

cash_register = CashRegister.new
eggs = cash_register.add_item("eggs", 0.98)
book = cash_register.add_item("book", 5.00, 3)
puts cash_register.items

p 'eof'
