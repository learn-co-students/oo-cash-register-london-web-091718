
class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

def initialize (discount= 0)
 @total = 0
 @discount = discount
 @items = []
 end

def add_item(title,price,quantity = 1)
 self.total += quantity * price
 quantity.times do
 self.items << title
 end
 self.last_transaction = quantity * price
 end


def apply_discount
 self.total = @total - (@total * @discount / 100)
#self.total = (total * ((100.0 - discount.to_f)/100)).to_i
 if @discount > 0
    return "After the discount, the total comes to $#{self.total}."
 else
    return "There is no discount to apply."
 end
 end

 def void_last_transaction
self.total = self.total - self.last_transaction
 end
end
