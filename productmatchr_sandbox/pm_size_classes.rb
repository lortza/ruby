

class ProductSize
  attr_accessor :identifier, :gender_id, :footwear_size_id, :clothing_size_id
  def initialize(args)
    @identifier = args[:identifier]
    @gender_id = args[:gender_id]
    @footwear_size_id = args[:footwear_size_id]
    @clothing_size_id = args[:clothing_size_id]
  end #initialize
end


class FootwearSize < ProductSize
  attr_accessor :us, :euro, :cm
  def initialize(args)
    super(args)
    @us = args[:us]
    @euro = args[:euro]
    @cm = args[:cm]
  end #initialize
end


class ClothingSize < ProductSize
  def initialize(args)
    super(args)
    @sml_size_id = args[:sml_size_id]
    @us_numeric = args[:us_numeric]
  end #initialize
end

class PantSize < ClothingSize
  def initialize(args)
    super(args)
    @name = args[:name]
    @inseam_in = args[:inseam_in]
    @waist_in = args[:waist_in]
  end #initialize
end

class ShirtSize < ClothingSize
  def initialize(args)
    super(args)
    @chest_in = args[:chest_in]
  end #initialize
end


class Product
  attr_accessor :name, :gender_id, :category_id
  def initialize(args)
    @name = args[:name]
    @gender_id = args[:gender_id]
    @category_id = args[:category_id]
  end #initialize
end

class Variant
  attr_accessor :product_id, :product_size_id
  def initialize(args)
    @product_id = args[:product_id]
    @product_size_id = args[:product_size_id]
  end #initialize
end

class Shopper
  attr_accessor :name, :shoe_size_id
  def initialize(args)
    @name = args[:name]
    @shoe_size_id = args[:shoe_size_id]
  end #initialize
end #Shopper


apparel1 = ApparelSize.new(identifier: "Apparel 1", gender_id: 1)
p apparel1

shoe1 = FootwearSize.new(us: 8, euro: 39, cm: 43, gender_id: 1, identifier: "8W")
p shoe1