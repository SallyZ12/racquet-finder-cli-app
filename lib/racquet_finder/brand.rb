class RacquetFinder::Brand

  attr_accessor :brand_name, :brand_url

  @@BRANDS = []

  def initialize(brand_name, brand_url)
    @brand_name = brand_name
    @brand_url = brand_url
    @@BRANDS<<self
  end

  def self.new_brand(b)

    self.new(

    b.text.gsub("\r","").gsub(" Racquets",""),

    b.attr("href").gsub("\r","").gsub(" //","http://")
    )

  end

  def self.all_brands
    @@BRANDS[0..3]
  end


  def self.find_brand(input)
    self.all_brands[input-1]
  end

end
