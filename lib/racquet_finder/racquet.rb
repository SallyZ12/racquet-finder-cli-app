class RacquetFinder::Racquet

  attr_accessor :brand_name, :brand_url, :model, :model_url, :type, :description, :price

  @@all = []
  @@BRANDS = [] #Enoch code
  # @@BRANDS == [{
  # name: head, url: www.url.com,
  # models: [{name: some # model, url: www.url.com}]}]

  #Enoch Code
  # @@BRANDS = [{name: "head", url: "www.some.url", models: [{name: "radical",url: "www.some.url"}]}]


  def initialize(brand_name = nil, brand_url = nil, model = nil, model_url= nil)
    @brand_name = brand_name
    @model = model
    @model_url = model_url
  end




    def scrape_brands
      doc = Nokogiri::HTML(open("http://www.midwestsports.com"))

      doc.css("ul.subcat li a").each do |brand|

        b={}
        b[:name]=brand.text.gsub("\r","").gsub(" Racquets","")
        b[:url]=brand.attr("href").gsub("\r","").gsub(" //","")
        b[:models]=[]
        @@BRANDS<<b
        end
    end


#Enoch Code
def scrape_models
  self.brands.each do |brand|
    doc = Nokogiri::HTML(open(brand[:model_url]))
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
        description = scraped css of description
        price = scraped css of the price
        Racquet.new(brand[:name], model[:name], type, description, price)
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
      @@BRANDS<<{brand_name: brand}

  end


  def self.all
  @@all
  end


end
