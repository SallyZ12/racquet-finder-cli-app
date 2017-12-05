class RacquetFinder::Racquet

  attr_accessor :name, :url, :model, :model_url, :type, :price

  @@all = []
  @@BRANDS = []


  def initialize(name, model_name, racquet_name, price)
    @name = name
    @model_name = model_name
    @raquet_name = racquet_name
    @price = price
  end



  def self.brands
    @@BRANDS
  end

  #Enoch Code
  def self.add_brand(name, url)

  end


  def self.all
  @@all
  end



end
