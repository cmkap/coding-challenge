class Checkout
    attr_reader :item

    PROMO =  {over60: ".10", two_or_more: "-8."}
    PRODUCTS = [
        {:code=>"001", :name=>"Lavender heart", :price=>9.25},
        {:code=>"002", :name=>"Personalised cufflinks", :price=>45.00},
        {:code=>"003", :name=>"Kids T-shirt", :price=>19.95}
    ]


    def initialize(promotional_rules = PROMO)
        @basket = 0
    end

    def scan(item)
        PRODUCTS[0]
    end

    def total
        "£#{sprintf("%#.2f",@basket)}"
    end

end