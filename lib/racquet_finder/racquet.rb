class RacquetFinder::Racquet

  attr_accessor :racquet_name, :price

  @@all = []

  def initialize(racquet_name, price)
    @racquet_name = racquet_name
    @price = price
    @@all<<self
  end



  def self.all
  @@all[0..5]
  end


  def self.find_racquet(input)
    self.all[input-1]
  end


  def self.clear_all
    @@all.clear
  end


end
