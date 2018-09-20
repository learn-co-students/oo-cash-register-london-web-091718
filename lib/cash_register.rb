require 'pry'
class CashRegister

  attr_accessor :total, :discount, :cart
  attr_reader
  attr_writer

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @item_info ={}
    @cart = []
  end



  def add_item(item, price, quantity = 1)
    items_info ={name: item, price: price, quantity: quantity}

    items_info[:quantity].times do
      @cart << items_info[:name]
    end
      @total += items_info[:price] * items_info[:quantity]

  end

  def apply_discount
    if @discount > 0
      @total = total - total * @discount / 100.00
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @cart

  end

  def void_last_transaction
    @total = @item_info.delete([-1]).to_f
  end


end
