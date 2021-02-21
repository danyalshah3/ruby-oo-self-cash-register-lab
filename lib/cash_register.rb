require 'pry'

class CashRegister

    attr_accessor :total, :discount, :add_item, :apply_discount, :items, :last_trasaction_amount
    

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

def add_item(title, price, quantity=1)
    @total = @total + price*quantity
    @last_trasaction_amount = @total
    @total

end

def apply_discount
    
    if @discount > 0
@total = @total - @total * @discount / 100 
return "After the discount, the total comes to $#{@total}."
    else
        return "There is no discount to apply."
end
end

def items
       @items << @add_item
end


def void_last_transaction
    @total -= @last_trasaction_amount
end

end
