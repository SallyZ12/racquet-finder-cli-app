class RacquetFinder::Racquet

  attr_accessor :brand, :model, :description, :price

  @@racquets =[]

  def initialize(brand = nil, model = nil, description = nil, price = nil)

    @brand = brand
    @model = model
    @description = description
    @price = price

  end

end
