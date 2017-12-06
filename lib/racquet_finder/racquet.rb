class RacquetFinder::Racquet

  attr_accessor :brand, :brand_url, :racquet_name, :price

  @@all = []
  @@BRANDS = []


  def initialize(brand)
    @brand = brand
    @brand_url = brand_url
    @raquet_name = racquet_name
    @price = price
    @@all<<self
  end

  def self.new_racquet(b,r)
    # self.new(
    # r.css("name").text
    # )
    self.new(

    b.text.gsub("\r","").gsub(" Racquets",""),

    b.attr("href").gsub("\r","").gsub(" //","http://"),

    r.css("h3 a").children.text.gsub("\r","").gsub("Tennis","").gsub("Racquet","").gsub("  ",""),


    r.css("p.price strong").children.text.gsub("\r","").gsub("                  ","")
    )
  end


  def self.all
  @@all
  end


  def self.brands
    @@BRANDS
  end


end
