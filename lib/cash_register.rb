class CashRegister

attr_accessor :total, :discount, :item, :price, :quantity, :priceq, :itemlist

def initialize(discount=0,total=0)
  @discount = discount
  @total = total
  @items=[]
end

def apply_discount
  if @discount<=0
    "There is no discount to apply."
  else
    @total = (@total.to_i * (100-@discount)/100).to_i
    "After the discount, the total comes to $#{@total.to_i}."
  end
end



def add_item(item, price, quantity=1)
  quantity.times do
    @items.push(item)
  end
  @quantity = quantity
  @item = item
  @price = price
  @priceq= @price * @quantity
  @total += @priceq
end

def items
  @items
end

def void_last_transaction
  total=0
end



end
