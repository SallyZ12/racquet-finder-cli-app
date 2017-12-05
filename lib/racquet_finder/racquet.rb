class RacquetFinder::Racquet

  attr_accessor :name, :url, :model, :model_url, :type, :price

  @@all = []
  @@BRANDS = [] #Enoch code
  # @@BRANDS == [{
  # name: head, url: www.url.com,
  # models: [{name: some # model, url: www.url.com}]}]

  #Enoch Code
  # @@BRANDS = [{name: "head", url: "www.some.url", models: [{name: "radical",url: "www.some.url"}]}]


  def initialize(name, model_name, type, price)
    @name = name
    @model_name = model_name
    @type = type
    @price = price
  end



  #Enoch Code
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
