class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors.push vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(food_item)
    @vendors.find_all do |vendor|
      vendor.inventory[food_item] != 0
    end
  end

  def sorted_item_list
    food_array = []
    @vendors.each do |vendor|
      vendor.inventory.find_all do |item|
        food_array.push item[0]
      end
    end
    food_array.sort.uniq
  end

  def total_inventory
    food_hash = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.each do |item|
      food_hash[item[0]] += item[1]
      end
    end
    food_hash
  end
end
