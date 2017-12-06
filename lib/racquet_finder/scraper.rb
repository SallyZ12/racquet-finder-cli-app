class RacquetFinder::Scraper


  def scrape_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))

      doc.css("ul.subcat li a").each do |brand|

        b={}
        b[:name]=brand.text.gsub("\r","").gsub(" Racquets","")
        b[:url]=brand.attr("href").gsub("\r","").gsub(" //","http://")
        b[:racquets]=[]
        RacquetFinder::Racquet.brands<<b
      end
  end


  def scrape_racquets
      self.scrape_brands
        RacquetFinder::Racquet.brands.each do |brand|
          doc = Nokogiri::HTML(open(brand[:url]))


          raq=[]
          dollars=[]
          racquet_type = doc.css("li.whole")
          racquet_type.each do |r|
          raq << r.css("h3 a").children.text.gsub("\r","").gsub("Tennis","").gsub("Racquet","").gsub("  ","")
          dollars << r.css("p.price strong").children.text.gsub("\r","").gsub("                  ","")


          brand[:racquets]<<raq
          brand[:racquets]<<dollars
            binding.pry

          end
       end
      end

end

          # m = {}
          # doc.css("ul.subcat li a").each do |model|
          # m[:model_name] = model.text.gsub("\r","").gsub(" Racquets","").gsub("Tennis","").gsub(" ","")
          # # m[:model_url]= model.attr("href").gsub("\r","").gsub("//","http://")
          # brand[:models]<<m

          # r = {}
          # doc.css("li.grid-prod-wrap h3 a").each do |raq|
          #   r[:name] = raq.children.text.gsub("\r","").gsub("Tennis", "").gsub("Racquet", "")
          #
          # doc.css("p.price strong").each do |pr|
          #   r[:price] =  pr.children.text.gsub("\r","").gsub("                ","")
          #
          # m[:racquet] = []
          # m[:racquet]<<r


          # binding.pry






  # RacquetFinder::Racquet.new(brand[:name], model[:model_name], raq[:racquet_name], raq[:price])




#code for racquet_name and price(included in scrape models--not working)
# def scrape_racquets
#
#   self.scrape_brands
#
#     RacquetFinder::Racquet.brands.each do |brand|
#       brand[:models].each do |model|
#       # brand[:name] # the name of the brand
#       # model[:model_name] # the name of the model
#       doc = Nokogiri::HTML(open(model[:url]))
#       r = {}
#       doc.css("li.grid-prod-wrap h3 a").each do |raq|
#         r[:name] = raq.children.text.gsub("\r","").gsub("Tennis", "").gsub("Racquet", "")
#
#
#       doc.css("p.price strong").each do |pr|
#         r[:price] =  pr.children.text.gsub("\r","")
#         binding.pry
#
#       m[:racquet] = []
#       m[:racquet]<<r
#
#         end
#       end
#     end
#   end
# end


        # code for individual racquet name and price
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
