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
            binding.pry
          brand[:models]<<m

          r=[]

        end
      end
    end

end
#Enoch Code
# def scrape_racquets
#
#   self.brands.each do |brand|
#       brand[:models].each do |model|
#       brand[:name] # the name of the brand
#       model[:model_name] # the name of the model
#       # doc = Nokogiri::HTML(open(model[:url]))
#       doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))
#
#         doc.css("ul.subcat li a").each do |r|
#           binding.pry
#           type = r.text.gsub("\r","").gsub(" Racquets","").gsub(" ","")
#
#
#           doc.css("p.price strong").each do |pr|
#
#           price = pr.children[0].join.gsub("\r","").gsub("when buying 2+","").split("$")



          # RacquetFinder::Racquet.new(brand[:name], model[:model_name], type, price)





  #
  # def scrape_racquet_brands
  #   doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
  #   # binding.pry
  #   brands = doc.css("ul.subcat li").children.text.split("Racquets")
  #   # brands = doc.css("div.lefthand-nav li a").map {|brand| brand.children[0]}.join.gsub("Tennis","").split("Racquets")
  #
  #   # brands[1..3].each.with_index(1) do |brand, i|
  #   #   puts "#{i}. #{brand}"
  #   # end
  # end
  #
  # def scrape_head_racquets
  #   doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
  #   h_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Tennis","").gsub("Racquets","").gsub("Graphene","").split
  #
  #   # h_models[0..6].each.with_index(1) do |model, i|
  #   #    puts "#{i}. #{model}"
  #   # end
  # end
  #
  # def scrape_head_radical
  #     doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-radical-tennis-racquets/c/head_radicalracquets/"))
  #       h_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")
  #
  #     #   h_types[0..3].each.with_index(1) do |type, i|
  #     #     puts "#{i}. #{type}"
  #     # end
  #   end
  #
  #   def scrape_head_speed
  #       doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-speed-tennis-racquets/c/head_speedracquets/"))
  #         h_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")
  #
  #       #   h_types[0..3].each.with_index(1) do |type, i|
  #       #     puts "#{i}. #{type}"
  #       # end
  #     end
  #
  #
  #
  #     def scrape_head_radical_prices
  #         doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-radical-tennis-racquets/c/head_radicalracquets/"))
  #         h_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")
  #
  #       #   h_price[1..4].each.with_index(1) do |type, i|
  #       #     puts "#{i}. #{type}"
  #       # end
  #     end
  #
  #
  #     def scrape_head_speed_prices
  #         doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-speed-tennis-racquets/c/head_speedracquets/"))
  #         h_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")
  #
  #       #   h_price[1..4].each.with_index(1) do |type, i|
  #       #     puts "#{i}. #{type}"
  #       # end
  #     end
  #
  #
  #     def scrape_babolat_racquets
  #         doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))
  #           b_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("sBabolat","").gsub("Tennis","").split("Racquet")
  #
  #           # b_models[1..3].each.with_index(1) do |model, i|
  #           #    puts "#{i}. #{model}"
  #           # end
  #       end
  #
  #
  #
  #       def scrape_babolat_pure_drive
  #         doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-drive-tennis-racquets/c/1012/"))
  #         b_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Babolat","").gsub("Tennis","").split("Racquet")
  #
  #         # b_types[1..4].each.with_index(1) do |type, i|
  #         #   puts "#{i}. #{type}"
  #
  #         # end
  #       end
  #
  #
  #       def scrape_babolat_pure_aero
  #         doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-aero-aeropro-tennis-racquets/c/1011/"))
  #         b_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Babolat","").gsub("Tennis","").split("Racquet")
  #
  #         # b_types[1..4].each.with_index(1) do |type, i|
  #         #   puts "#{i}. #{type}"
  #         # end
  #       end
  #
  #
  #
  #       def scrape_babolat_pure_drive_prices
  #           doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-drive-tennis-racquets/c/1012/"))
  #           b_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")
  #
  #           # b_price[1..4].each.with_index(1) do |type, i|
  #           #   puts "#{i}. #{type}"
  #         # end
  #       end
  #
  #
  #
  #       def scrape_babolat_pure_aero_prices
  #           doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-aero-aeropro-tennis-racquets/c/1011/"))
  #           b_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")
  #
  #           # b_price[1..4].each.with_index(1) do |type, i|
  #           #   puts "#{i}. #{type}"
  #         # end
  #       end
  #
  #
  #       def scrape_wilson_racquets
  #           doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-tennis-racquets/c/111/"))
  #           w_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("sWilson","").gsub("Tennis","").split("Racquet")
  #
  #           # w_models[1..6].each.with_index(1) do |model, i|
  #           #      puts "#{i}. #{model}"
  #             #  end
  #         end
  #
  #
  #
  #         def scrape_wilson_rf_pro_staff
  #           doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-rf-prostaff-tennis-racquets/c/wilsonrfprostaff/"))
  #           w_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Wilson","").gsub("Tennis","").split("Racquet")
  #
  #
  #           # w_types[0..3].each.with_index(1) do |type, i|
  #           #   puts "#{i}. #{type}"
  #         # end
  #       end
  #
  #
  #       def scrape_wilson_ultra
  #         doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-ultra-tennis-racquets/c/wilsonultra/"))
  #         w_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Wilson","").gsub("Tennis","").split("Racquet")
  #
  #         # w_types[0..3].each.with_index(1) do |type, i|
  #         #   puts "#{i}. #{type}"
  #       # end
  #       end
  #
  #
  #
  #       def scrape_wilson_rf_pro_staff_prices
  #           doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-rf-prostaff-tennis-racquets/c/wilsonrfprostaff/"))
  #           w_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")
  #
  #           # w_price[1..4].each.with_index(1) do |type, i|
  #           #   puts "#{i}. #{type}"
  #         # end
  #       end
  #
  #
  #       def scrape_wilson_ultra_prices
  #           doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-ultra-tennis-racquets/c/wilsonultra/"))
  #           w_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")
  #
  #
  #           # w_price[1..4].each.with_index(1) do |type, i|
  #           #   puts "#{i}. #{type}"
  #         # end
  #       end
  #
  # end
