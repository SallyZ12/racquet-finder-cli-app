class RacquetFinder::Scraper


  def scrape_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))

      doc.css("ul.subcat li a").each do |brand|

        b={}
        b[:name]=brand.text.gsub("\r","").gsub(" Racquets","")
        b[:url]=brand.attr("href").gsub("\r","").gsub(" //","http://")
        b[:models]=[]
        RacquetFinder::Racquet.brands<<b
      end
  end

  #Enoch Code
  def scrape_models
      self.scrape_brands
        RacquetFinder::Racquet.brands.each do |brand|
          doc = Nokogiri::HTML(open(brand[:url]))
          # doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))

          m = {}
          doc.css("ul.subcat li a").each do |model|
          m[:model_name] = model.text.gsub("\r","").gsub(" Racquets","").gsub("Tennis","").gsub(" ","")
          m[:model_url]= model.attr("href").gsub("\r","").gsub("//","http://")
          brand[:models]<<m


          # r = {}
          # doc.css("li.grid-prod-wrap h3 a").each do |raq|
          #   r[:name] = raq.children.text.gsub("\r","").gsub("Tennis", "").gsub("Racquet", "")
          #
          #
          # doc.css("p.price strong").each do |pr|
          #   r[:price] =  pr.children.text.gsub("\r","")
          #
          # m[:racquet] = []
          # m[:racquet]<<r
          # binding.pry
          # end
        # end
      end
    end
  end

end

  # RacquetFinder::Racquet.new(brand[:name], model[:model_name], raq[:racquet_name], raq[:price])




#Enoch Code
def scrape_racquets
  self.scrape_models
    RacquetFinder::Racquet.brands.each do |brand|
      brand[:models].each do |model|
      # brand[:name] # the name of the brand
      # model[:model_name] # the name of the model
      doc = Nokogiri::HTML(open(model[:url]))
      r = {}
      doc.css("li.grid-prod-wrap h3 a").each do |raq|
        r[:name] = raq.children.text.gsub("\r","").gsub("Tennis", "").gsub("Racquet", "")


      doc.css("p.price strong").each do |pr|
        r[:price] =  pr.children.text.gsub("\r","")

      m[:racquet] = []
      m[:racquet]<<r

        end
      end
    end
  end
end


        end
      end
    end
end
          # r = {}
          # doc.css("li.grid-prod-wrap h3 a").each do |raq|
          #   r[:name] = raq.children.text.gsub("\r","").gsub("Tennis", "").gsub("Racquet", "")
          #
          #
          # doc.css("p.price strong").each do |pr|
          #   r[:price] =  pr.children.text.gsub("\r","")
          #
          # m[:racquet] = []
          # m[:racquet]<<r

#         end
#       end
#     end
#   end
# end
