class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(food_item)
    @inventory[food_item]
  end

  def stock(food_item, quantity)
    @inventory[food_item] += quantity
  end

end
