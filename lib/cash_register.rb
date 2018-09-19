require 'pry'

class CashRegister
  attr_accessor :total, :items, :discount

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  # def total
  #   @total
  # end

  def add_item(item, price, count = 1)
    count.times do
      @items << {item: item, price: price}
    end
    @total += price * count
  end

  def apply_discount
    total  = @total
    discount = @discount / 100.0

    if discount > 0
      total = @total - @total * discount
      @total = total.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items.map{|key| key[:item]}
  end

  def void_last_transaction
    @items.each {|n| @total -= n[:price]}
  end

end
