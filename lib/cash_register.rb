class CashRegister

    attr_accessor :discount, :total, :transaction, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.transaction = price * quantity
        self.total += self.transaction
        
        quantity.times do
            @items << title
        end
    end

    def apply_discount()
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
        "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.transaction
    end
end
