require 'pry'


class CashRegister
  attr_accessor :total, :discount, :cart, :item_info

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @item_info = {}
  end

  def add_item(item, price, quantity = 1)
    @item_info = {name: item, price: price, quantity: quantity}
    # item_info[:name] = item
    # item_info[:price] = price
    # item_info[:quantity] = quantity


    item_info[:quantity].times do
        @cart << item_info[:name]
  end


    @total += price * quantity

  end

  def apply_discount

    if @discount <= 0
      return "There is no discount to apply."
    else
      @total = total - total * @discount / 100.0
      return "After the discount, the total comes to $#{total.to_i}."
    end
  end



  def items
    @cart
  end

# binding.pry
   def void_last_transaction
     @total = @item_info.delete([-1]).to_f

   end


end
