class RacquetFinder::CLI

  #for scraper.rb
  def scrape_racquet_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
    brands = doc.css("div.lefthand-nav li a").map {|brand| brand.children[0]}.join.gsub("Tennis","").split("Racquets")

    #for CLI
    puts "Tennis Brands To Choose From:"
    brands[1..3].each.with_index(1) do |brand, i|
      puts "#{i}. #{brand}"
    end
  end


  #for scraper.rb
  def scrape_head_racquets
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
    models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Tennis","").gsub("Racquets","").gsub("Graphene","").split

    #for CLI
    puts "Select a Head Tennis Racquet Model:"

    models[0..6].each.with_index(1) do |model, i|
       puts "#{i}. #{model}"
    end
  end



    #For scraper.rb
  def scrape_head_racquet_types
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
        types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").gsub("Head","").gsub("Graphene","").gsub("Tennis","").split("Racquet")

        #for CLI
        puts "Select a Head Racquet Type:"

        types.each.with_index(1) do |type, i|
          puts "#{i}. #{type}"
      end
    end



  #for scraper.rb
  def scrape_babolat_racquets
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))
      models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("sBabolat","").gsub("Tennis","").split("Racquet")

      # for CLI
      puts "Select a Babolat Racquet Model:"

      models[1..5].each.with_index(1) do |model, i|
           puts "#{i}. #{model}"
         end
    end

  # for scraper.rb
  def scrape_wilson_racquets
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-tennis-racquets/c/111/"))
      models = doc.css("div.lefthand-nav li a").map {|model| model.children[0]}.join.gsub("\r","").gsub("sWilson","").gsub("Tennis","").split("Racquet")


      #for CLI
      puts "Select a Wilson Racquet Model:"

      models[1..6].each.with_index(1) do |model, i|
           puts "#{i}. #{model}"
         end
    end






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
