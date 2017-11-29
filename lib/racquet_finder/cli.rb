class RacquetFinder::CLI


    puts "Select A Tennis Brand:"


    puts "Select a Head Tennis Racquet Model:"


    puts "Select a Head Racquet Type:"


    puts "Select a Babolat Racquet Model:"



    #for scraper.rb
    def scrape_babolat_pure_aero
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-aero-aeropro-tennis-racquets/c/1011/"))
      b_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Babolat","").gsub("Tennis","").split("Racquet")

      #for CSS
      puts "Select a Babolat Racquet Type:"

      b_types[1..4].each.with_index(1) do |type, i|
        puts "#{i}. #{type}"
      end
    end


    # for scraper.rb
    def scrape_babolat_pure_drive_prices
        doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-drive-tennis-racquets/c/1012/"))
        b_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")

        # for cli
        b_price[1..4].each.with_index(1) do |type, i|
          puts "#{i}. #{type}"
      end
    end

    # for scraper.rb
    def scrape_babolat_pure_aero_prices
        doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-pure-aero-aeropro-tennis-racquets/c/1011/"))
        b_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")

        # for cli
        b_price[1..4].each.with_index(1) do |type, i|
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
    def scrape_wilson_rf_pro_staff
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-rf-prostaff-tennis-racquets/c/wilsonrfprostaff/"))
      w_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Wilson","").gsub("Tennis","").split("Racquet")

      #for CLI
      puts "Select a Wilson Racquet:"
      w_types[0..3].each.with_index(1) do |type, i|
        puts "#{i}. #{type}"
    end
  end

  #for scraper.rb
  def scrape_wilson_ultra
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-ultra-tennis-racquets/c/wilsonultra/"))
    w_types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Wilson","").gsub("Tennis","").split("Racquet")

    #for CLI
    puts "Select a Wilson Racquet:"
    w_types[0..3].each.with_index(1) do |type, i|
      puts "#{i}. #{type}"
  end
  end

  # for scraper.rb
  def scrape_wilson_rf_pro_staff_prices
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-rf-prostaff-tennis-racquets/c/wilsonrfprostaff/"))
      b_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")

      # for cli
      b_price[1..4].each.with_index(1) do |type, i|
        puts "#{i}. #{type}"
    end
  end

  def scrape_wilson_ultra_prices
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-ultra-tennis-racquets/c/wilsonultra/"))
      b_price = doc.css("p.price strong").map {|price| price.children[0]}.join.gsub("\r","").gsub("when buying 2+","").split("$")

      # for cli
      b_price[1..4].each.with_index(1) do |type, i|
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
