class Checkout
    PROMO =  {over60: ".10", two_or_more: "-8."}


    def initialize(promotional_rules = PROMO)
        
    end

    def scan(item)
        @item = item
    end

    def total
    end

    def item
        @item
    end



    

end