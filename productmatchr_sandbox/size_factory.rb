

class VariantDisplay

  def initialize(variant_id)
    @variant = Variant.find(variant_id)
  end

  def us_size
    SizeFactory.build(variant.size_information)
  end

  private

  attr_reader :variant
end

module SizeFactory
  def build(size_information)
    if size_information.keys.include?(shoe_size)
      ShoeSize.new(size_information)
    elsif size_information.keys.include?(waist)
      ClothingSize.new(size_information)
    elsif size_information.keys.include?(waist)
    end#if
  end#build
end
