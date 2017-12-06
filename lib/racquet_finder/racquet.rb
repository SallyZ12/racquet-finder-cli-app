class RacquetFinder::Racquet

  attr_accessor :name, :url, :type, :price

  @@all = []
  @@BRANDS = []


  def initialize(name, racquet_name, price)
    @name = name
    @raquet_name = racquet_name
    @price = price
  end

  def self.racquet_new(r)
    self.new(
    r.css("name").text
    )
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
