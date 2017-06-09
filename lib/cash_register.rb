require 'pry'

class CashRegister

  attr_accessor :total, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(item, price, count=1)
    @price = price
    @count = count
    @last_item = item
    @last_price = price
    @last_count = count
    @count.times do
      @items << item
    end
    @total = @total + @price * @count
  end

  def apply_discount
    if @discount > 0
      @total = @total - @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_price * @last_count
  end

end
