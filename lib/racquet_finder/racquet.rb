class RacquetFinder::Racquet

  attr_accessor :name, :url, :model, :model_url, :type, :description, :price

  @@all = []
  @@BRANDS = [] #Enoch code
  # @@BRANDS == [{
  # name: head, url: www.url.com,
  # models: [{name: some # model, url: www.url.com}]}]

  #Enoch Code
  # @@BRANDS = [{name: "head", url: "www.some.url", models: [{name: "radical",url: "www.some.url"}]}]


  def initialize(name = nil, url = nil, model = nil, model_url= nil)
    @name = name
    @url = url
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
        self.scrape_brands

          # self.brands.each do |brand|
          @@BRANDS.each do |brand|

            # doc = Nokogiri::HTML(open(brand[:url]))
            doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))

            doc.css("ul.subcat li a").each do |model|
              binding.pry
            m = model.text.gsub("\r","").gsub(" Racquets","").gsub("Tennis","").gsub(" ","")
            model.attr("href").gsub("\r","").gsub(" //","")
            @@BRANDS[0][:models]<<m


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
      # @@BRANDS<<{brand_name: brand}

  end


  def self.all
  @@all
  end


end
