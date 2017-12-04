class RacquetFinder::Racquet

  attr_accessor :name, :url, :model, :model_url, :type, :price

  @@all = []
  @@BRANDS = [] #Enoch code
  # @@BRANDS == [{
  # name: head, url: www.url.com,
  # models: [{name: some # model, url: www.url.com}]}]

  #Enoch Code
  # @@BRANDS = [{name: "head", url: "www.some.url", models: [{name: "radical",url: "www.some.url"}]}]


  def initialize(name = nil, model_name = nil,type = nil, price = nil)
    @name = name
    @model_name = model_name
    @type = type
    @price = price
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

            m = {}
            doc.css("ul.subcat li a").each do |model|

            m[:model_name] = model.text.gsub("\r","").gsub(" Racquets","").gsub("Tennis","").gsub(" ","")

            m[:model_url]= model.attr("href").gsub("\r","").gsub("//","")
              binding.pry

            @@BRANDS[0][:models]<<m

    end
  end
end

#Enoch Code
def scrape_racquets

  self.brands.each do |brand|
      brand[:models].each do |model|
      brand[:name] # the name of the brand
      model[:model_name] # the name of the model
      # doc = Nokogiri::HTML(open(model[:url]))
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))

        doc.css("ul.subcat li a").each do |r|
          binding.pry
          type = r.text.gsub("\r","").gsub(" Racquets","").gsub(" ","")


          doc.css("p.price strong").each do |pr|

          price = pr.children[0].join.gsub("\r","").gsub("when buying 2+","").split("$")



          Racquet.new(brand[:name], model[:model_name], type, price)

          end
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
