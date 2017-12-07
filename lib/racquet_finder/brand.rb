class RaquetFinder::Brand

  attr_accessor :brand, :brand_url

  @@BRANDS = []

  def initialize(brand, brand_url)
    @brand = brand
    @brand_url = brand_url
    @@BRANDS<<self
  end


  def self.new_brand(b)

    self.new(

    b.text.gsub("\r","").gsub(" Racquets",""),

    b.attr("href").gsub("\r","").gsub(" //","http://")
    )

  end

  def all_brands
    @@BRANDS
  end


  def find_brand(input)
    self.all_brands[input-1]
  end

end
