class RacquetFinder::Racquet

  attr_accessor :brand, :model, :description, :price

  @@racquets =[]

  def initialize(brand = nil, model = nil, type = nil, price = nil)

    @brand = brand
    @model = model
    @type = type
    @price = price

  end
end
