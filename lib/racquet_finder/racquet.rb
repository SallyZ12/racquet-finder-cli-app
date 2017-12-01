class RacquetFinder::Racquet

  attr_accessor :brand_name, :brand_url, :model_name, :model_url, :type, :price

  @@all = []
  @@BRANDS = [] #Enoch code
  # @@BRANDS == [{
  # name: head, url: www.url.com,
  # models: [{name: some # model, url: www.url.com}]}]

  #Enoch Code
  # @@BRANDS = [{brand_name: "head", brand_url: "www.some.url", models: [{model_name: "radical",model_url: "www.some.url"}]}]

  def initialize(brand_name = nil, model_name = nil, type_name = nil, price = nil)
    @brand_name = brand_name
    @model_name = model_name
    @type_name = type_name
    @price = price
  end



  #my code followig Enoch
    def scrape_brands
      doc = Nokogiri::HTML(open("http://www.midwestsports.com"))


      #this code is working for brand_names into an array
      brand_name = doc.css("ul.subcat li").text.split("Racquets").each do |brand|
        binding.pry
          # Racquet.brand.push(some css)
          # @@BRANDS<<brand
          # binding.pry
        # end

      # brand_url = doc.css("ul.subcat li").css("a").attr("href").value.gsub("\r","").each do |url|

        # brand_url = doc.css("ul.subcat li a").attr("href").text.gsub("\r","")
        # binding.pry
        # @@BRANDS<<url

      # binding.pry
      # Racquet.brand.push(some css)
  end



#Enoch Code
def scrape_models
  self.brands.each do |brand|
    doc = Nokogiri::HTML(open(brand[:url]))
    doc.somecss.each do |model|
      Racquet.models.push(some css)
    end
  end
end

#Enoch Code
def scrape_rackets
  self.brands.each do |brand|
    brand[:models].each do |model|
      brand[:name] # the name of the brand
      model[:name] # the name of the model
      doc = Nokogiri::HTML(open(model[:url]))
      doc.somecss.each do |racket|
        type = scraped css of the type
        price = scraped css of the price
        Racket.new(brand[:name], model[:name], type, price)
      end
    end
  end
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
