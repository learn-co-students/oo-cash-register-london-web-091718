class CashRegister
  attr_accessor :discount, :total, :title, :price, :items, :quantity
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title=title
    @price=price
    @quantity=quantity
    quantity.times do
    @items << title
    end
    @total += price*quantity
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
       "There is no discount to apply."
    else
     discounted_total = (@total - (@total/100)*@discount)
     @total = discounted_total
     "After the discount, the total comes to $#{discounted_total}."
   end
  end

  def void_last_transaction
    @total = @total -= @last_transaction
 end
end
