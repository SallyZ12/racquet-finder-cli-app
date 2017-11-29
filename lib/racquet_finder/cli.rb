class RacquetFinder::CLI


    puts "Select A Tennis Brand:"


    puts "Select a Head Tennis Racquet Model:"


    puts "Select a Head Racquet:"


    puts "Select a Babolat Racquet Model:"

    puts "Select a Babolat Racquet:"

    puts "Select a Wilson Racquet Model:"

    puts "Select a Wilson Racquet:"


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
