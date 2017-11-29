class RacquetFinder::Racquet

  attr_accessor :brand, :model, :type, :price

  @@all =[]

  def initialize(brand = nil, model = nil, type = nil, price = nil)
    @brand = brand
    @model = model
    @type = type
    @price = price
  end



def self.all
  @@all
end



end
