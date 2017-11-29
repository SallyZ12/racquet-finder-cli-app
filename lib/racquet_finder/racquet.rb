class RacquetFinder::Racquet

  attr_accessor :brand, :model, :type, :price

  @@all =[]

  def initialize(brand = nil, model = nil, type = nil, price = nil)
    @brand = brand
    @model = model
    @type = type
    @price = price
  end

  def self.call
    racquet=self.new
    racquet.brand = RacquetFinder::Scraper.scrape_racquet_brands
    racquet.model = RacquetFinder::Scraper.scrape_head_racquets
    binding.pry
    racquet
  end





def self.all
  @@all
end




end
