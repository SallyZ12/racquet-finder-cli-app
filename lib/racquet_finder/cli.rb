class RacquetFinder::CLI

  #for scraper.rb
  def scrape_racquet_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
    brands = doc.css("div.lefthand-nav li a").map {|brand| brand.children[0]}.join.gsub("Tennis","").split("Racquets")

    #for CLI
    puts "Select Tennis Brands To Choose From:"
    brands[1..3].each.with_index(1) do |brand, i|
      puts "#{i}. #{brand}"
    end
  end


  #for scraper.rb
  def scrape_head_racquets
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
    h_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Tennis","").gsub("Racquets","").gsub("Graphene","").split

    #for CLI
    puts "Select a Head Tennis Racquet Model:"

    h_models[0..6].each.with_index(1) do |model, i|
       puts "#{i}. #{model}"
    end
  end

    #For scraper.rb
  def scrape_head_radical
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-radical-tennis-racquets/c/head_radicalracquets/"))
        h_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")

        #for CLI
        puts "Select a Head Racquet Type:"

        h_types[0..3].each.with_index(1) do |type, i|
          puts "#{i}. #{type}"
      end
    end

    #for scraper.rb
    def scrape_head_speed
        doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-speed-tennis-racquets/c/head_speedracquets/"))
          h_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")

          #for CLI
          puts "Select a Head Racquet Type:"

          h_types[0..3].each.with_index(1) do |type, i|
            puts "#{i}. #{type}"
        end
      end



    # for scraper.rb
    def scrape_head_radical_prices
        doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-radical-tennis-racquets/c/head_radicalracquets/"))
        h_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")

        # for cli
        h_price[1..4].each.with_index(1) do |type, i|
          puts "#{i}. #{type}"
      end
    end














  #for scraper.rb
  def scrape_babolat_racquets
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))
        b_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("sBabolat","").gsub("Tennis","").split("Racquet")

      # for CLI
      puts "Select a Babolat Racquet Model:"

        b_models[1..3].each.with_index(1) do |model, i|
           puts "#{i}. #{model}"
         end
    end

    #for scraper.rb
    def scrape_babolat_racquet_types
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))
      b_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Babolat","").gsub("Tennis","").split("Racquet")

      #for CSS
      puts "Select a Babolat Racquet Type:"

      b_types[1..4].each.with_index(1) do |type, i|
        puts "#{i}. #{type}"

      end
    end


  # for scraper.rb
  def scrape_wilson_racquets
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-tennis-racquets/c/111/"))
      w_models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("sWilson","").gsub("Tennis","").split("Racquet")


      #for CLI
      puts "Select a Wilson Racquet Model:"

      w_models[1..6].each.with_index(1) do |model, i|
           puts "#{i}. #{model}"
         end
    end

    #for scraper.rb
    def scrape_wilson_racquet_types
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-tennis-racquets/c/111/"))
      w_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Wilson","").gsub("Tennis","").split("Racquet")

      #for CLI
      w_types[0..3].each.with_index(1) do |type, i|
        puts "#{i}. #{type}"
    end
  end





  #stub for ideas
  def call
    # list_racquet_brands
    list_racquet_models
  end

  def list_racquet_brands
    puts "List of Tennis Racquet Brands"
    binding.pry
    puts "1. Babolat, 2. Head, 3. Wilson"
  end

  def list_racquet_models
    # input = nil
    # while input != exit

    puts "1. Head Radical Pro, 2. Head Radical Touch, 3. Head Radical MPA"
    end
  # end

end
