# **Ruby Coding Challenge**

## **Challenge** 

A checkout system for a client of an online marketplace, here is a sample of some of the products available on our site: 



```
Product code  Name                     Price 
                                               
001           Lavender heart           £9.25 
002           Personalised cufflinks   £45.00
003           Kids T-shirt             £19.95 
```

The marketing team wants to offer promotions as an incentive for their customers to purchase these items. 

Rules are as follows:

If you spend over £60, then you get 10% of your purchase

If you buy 2 or more lavender hearts then the price drops to £8.50.

The check-out can scan items in any order, and because the promotions will change, it needs to be flexible regardingnthe promotional rules. 

The interface to the checkout looks like this (shown in Ruby):

```
co = Checkout.new(promotional_rules) 
co.scan(item)
co.scan(item)
price = co.total 
```

```
Test Data 
-----------------------------
Basket: 001,002,003
Total price expected: £66.78 

Basket: 001,003,001
Total price expected: £36.95

Basket: 001,002,001,003
Total price expected: £73.76 
``` 


## **How to run the application**

Run the below commands in your command line interface to run the test suite and test functionality in IRB. Ensure have Ruby and Rspec installed on your local machine.

```
git clone https://github.com/cmkap/coding-challenge
cd checkout
rspec
```

irb
require './lib/checkout.rb'

## Load the promotions logic and instantiate checkout

```
  PROMO1 = Proc.new do |items, item_total|
    items.map{|x| x[1]}.select{|x| x == "Lavender heart"}.length > 1
  end

  PROMO2 = Proc.new do |item_total|
    item_total > 60
  end

  PROMOTIONAL_RULES = {"promo1":  PROMO1, "promo2": PROMO2}

  co = Checkout.new(PROMOTIONAL_RULES)
```

## Instantiate the items you want to checkout
```
  item1 = Item.new "001", "Lavender heart", 9.25
  item2 = Item.new "002", "Personalised cufflinks", 45.00
  item3 = Item.new "003", "Kids T-Shirt", 19.95
```
## Run Commands
```
  co.scan(item1)
  co.scan(item2)
  co.scan(item3)
  price = co.total
```

## Tech Used

Ruby, Rspec, Rubocop