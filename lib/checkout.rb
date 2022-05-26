class Checkout
    attr_reader :item

    PROMO =  {over60: ".10", two_or_more: "-8."}


    def initialize(promotional_rules = PROMO)
        @counter = 0
    end

    def scan(item)
        @counter += item[:price]
        @item = item
    end

    def total
        "£#{sprintf("%#.2f",@counter)}"
    end

end