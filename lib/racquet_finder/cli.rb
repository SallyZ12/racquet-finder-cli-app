class RacquetFinder::CLI

  #testing scraper in CLI
  def scrape_racquet_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
    brands = doc.css("div.lefthand-nav li").first.text.split("racquets")
    brand_array = brands.join.gsub("Racquets", "").split

    puts "Tennis Brands To Choose From:"
    brand_array[1..3].each.with_index(1) do |brand, i|
      puts "#{i}. #{brand}"
    end
  end

  def scrape_head_racquets
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
    models = doc.css("div.lefthand-nav li").first.text.split("Head")
    model_array = models.join.gsub("Racquets", "").gsub("Tennis","").gsub("Graphene","").split

    puts "Select a Head Tennis Racquet Model"

    model_array[1..6].each.with_index(1) do |model, i|
       puts "#{i}. #{model}"
    end
  end

  def scrape_babolat_racquets
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/babolat-tennis-racquets/c/101/"))
      models = doc.css("div.lefthand-nav li").first.text.split("Babolat")
      model_array = models.join.gsub("Racquets", "").gsub("Tennis","").gsub("Pure","").gsub("/",'').split

      puts "Select a Babolat Racquet Model"

      model_array[0..5].each.with_index(1) do |model, i|
           puts "#{i}. #{model}"
         end
    end

  # for scraper.rb -- in process
  def scrape_wilson_racquets
      doc = Nokogiri::HTML(open("http://www.midwestsports.com/wilson-tennis-racquets/c/111/"))
      # models = doc.css("div.lefthand-nav li").first.text.split("Wilson")
      models = doc.css("div.lefthand-nav li").first.map{|model|model.children[3].children[3].children[1].children[0]}.join.gsub("\r","").split
      # models = doc.css("div.subcatContent h2 a").map{|model| model.children[0]}  test

      # model_array = models.join.gsub("Racquets", "").gsub("Tennis","").split
      binding.pry
      #for CLI
      puts "Select a Wilson Racquet Model"

      model_array[0..7].each.with_index(1) do |model, i|
           puts "#{i}. #{model}"
         end
    end

  #For scraper.rb
  def scrape_head_racquet_types
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
      types = doc.css("div.subcatContent h3 a").map {|type| type.children[0]}.join.gsub("\r","").split("Racquet")

      #for CLI
      puts "Select a Head Racquet Type"

      types.each.with_index(1) do |type, i|
        puts "#{i}. #{type}"
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
