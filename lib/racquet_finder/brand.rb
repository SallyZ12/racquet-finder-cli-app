class RacquetFinder::Brand

  attr_accessor :brand_name, :brand_url

  @@brands = []

  def initialize(brand_name, brand_url)
    @brand_name = brand_name
    @brand_url = brand_url
    @@brands<<self
  end


  def self.all_brands
    @@brands[0..3]
  end


  def self.find_brand(input)
    self.all_brands[input-1]
  end

end
