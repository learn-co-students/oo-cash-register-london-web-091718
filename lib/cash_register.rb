
class CashRegister
attr_accessor :discount
attr_accessor :total
attr_accessor :items
attr_accessor :last_transaction

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, amount, quantity=1)
   @total += amount * quantity
   quantity.times do
     @items << title
   end
   @last_transaction = amount * quantity
 end

def apply_discount
if @discount > 1
@total = @total - ((@total*@discount)/100)
"After the discount, the total comes to $#{@total}."
else
"There is no discount to apply."
end
end

def void_last_transaction
@total = @total - @last_transaction

end




end
