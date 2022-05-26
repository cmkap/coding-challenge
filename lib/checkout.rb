class Checkout
    attr_reader :items, :promotional_rules

    PROMO1 = Proc.new do |items, item_total|
      items.map{|x| x[1]}.select{|x| x == "Lavender heart"}.length > 1
    end
    PROMO2 = Proc.new do |item_total|
      item_total > 60
    end
    PROMOTIONAL_RULES = {"promo1":  PROMO1, "promo2": PROMO2}
  
    def initialize(promotional_rules)
      @items = []
      @promotional_rules = promotional_rules
    end
  
    def scan(item)
      @items.push([item.code, item.name, item.price])
    end
  
    def total
      price_index = 2
      item_total = @items.map{|item|item.select.with_index{|_,i| i == price_index}}.flatten.sum
      discounts(item_total, @items)
    end
  
    def discounts(item_total, items)
      old_lavender_price = 9.25
      new_lavender_price = 8.50
      if @promotional_rules[:promo1].call(items, item_total)
        item_total -= ((old_lavender_price - new_lavender_price) * items.map{|x| x[1]}.select{|x| x == "Lavender heart"}.length)
      end
      if @promotional_rules[:promo2].call(item_total)
        item_total -= (item_total * 0.1)
      end
      "£#{sprintf("%#.2f",item_total)}"
      
    end
end


    