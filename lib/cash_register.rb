class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction_amount

    def initialize(discount = 0)
        @items = []
        @discount = discount
        @total = 0
        @last_transaction_amount = 0
    end

    def add_item(title, price, quantity=1)
        self.total += quantity*price
        quantity.times {items << title}
        self.last_transaction_amount = quantity*price
    end

    def apply_discount
        if discount > 0
          self.total = (total * (100 - discount)) / 100.0
          "After the discount, the total comes to $#{self.total.to_i}."
        else
          "There is no discount to apply."
        end
      end
      
    def void_last_transaction
        self.total -= last_transaction_amount
    end
end 

