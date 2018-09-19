class CashRegister

attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items =[]
    @last_transaction = 0
  end

  def add_item(title, price, quantity=1 )
    @total += (price * quantity)
    quantity.times do
      @items.push(title)
    end
    # @items.push(quantity.times.collect {title})
    @items = @items.flatten
    @last_transaction = (price * quantity)
    @total
  end

  def apply_discount
    if @discount.to_i == 0
      "There is no discount to apply."
    else
      @total = @total - @total * @discount / 100.00
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
