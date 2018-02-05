

class SizeAttribute < ActiveRecord::Base
  has_many :products, through: :product_sizes
  has_many :product_sizes
  has_many :users, through: :user_sizes
  has_many :user_sizes
end#SizeAttribute

# id    key     value
# 1     waist   29
# 2     length  30
# 3     sml     medium


class Product < ActiveRecord::Base
  has_many :size_attributes, through: :product_sizes
  has_many :product_sizes
end #Product

class Shopper < ActiveRecord::Base
  has_many :size_attributes, through: :shopper_sizes
  has_many :shopper_sizes
end #Shopper


class GuestShopper
  attr_accessor :gender, :top_sizes, :bottom_sizes, :pant_sizes, :shoe_sizes

  def initialize(gender, top_sizes = [], bottom_sizes = [], pant_sizes = [], shoe_sizes = [])
    @gender = gender
    @top_sizes = top_sizes
    @bottom_sizes = bottom_sizes
    @pant_sizes = pant_sizes
    @shoe_sizes = shoe_sizes
  end

  def name
    "Guest"
  end #name

  def authenticated?
    false
  end #authenticated?

end #GuestShopper



class ProductFinder
  class << self

    def pants_for_user(user)
      Product.where(department: :pants, size_attributes: [pant_query(user)] )
    end #pants_for_user(user)

    def pant_quert(user)
      ("(waist = ? AND length = ?) OR sml = ?", user.waist, user.length, user.sml)
    end #pant_quert(user)

  end #self
end #ProductFinder






