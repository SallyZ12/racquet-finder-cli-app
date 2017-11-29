class RacquetFinder::Scraper


  def scrape_racquet_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
    brands = doc.css("div.lefthand-nav li a").map {|brand| brand.children[0]}.join.gsub("Tennis","").split("Racquets")

    brands[1..3].each.with_index(1) do |brand, i|
      puts "#{i}. #{brand}"
    end
  end

  def scrape_head_racquets
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
    h_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Tennis","").gsub("Racquets","").gsub("Graphene","").split

    h_models[0..6].each.with_index(1) do |model, i|
       puts "#{i}. #{model}"
    end
  end

  def scrape_head_radical
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-radical-tennis-racquets/c/head_radicalracquets/"))
        h_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")

        h_types[0..3].each.with_index(1) do |type, i|
          puts "#{i}. #{type}"
      end
    end

    def scrape_head_speed
        doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-speed-tennis-racquets/c/head_speedracquets/"))
          h_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")

          h_types[0..3].each.with_index(1) do |type, i|
            puts "#{i}. #{type}"
        end
      end



      def scrape_head_radical_prices
          doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-radical-tennis-racquets/c/head_radicalracquets/"))
          h_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")

      
          h_price[1..4].each.with_index(1) do |type, i|
            puts "#{i}. #{type}"
        end
      end







  end
