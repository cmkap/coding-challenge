class Checkout
    attr_reader :item

    PROMO =  {over60: ".10", two_or_more: "-8."}
    PRODUCTS = [
        {:code=>001, :name=>"Lavender heart", :price=>"9.25"},
        {:code=>002, :name=>"Lavender heart", :price=>"9.25"},
        {:code=>003, :name=>"Lavender heart", :price=>"9.25"}
    ]


    def initialize(promotional_rules = PROMO)
        @basket = 0
    end

    def scan(item)
        @basket += item[:price]
        @item = item
    end

    def total
        "£#{sprintf("%#.2f",@basket)}"
    end

end