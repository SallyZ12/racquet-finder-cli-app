class RacquetFinder::CLI

  #tested in CLI-- resides in scraper.rb
  # def scrape_brand
  #   doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
  #   brands = doc.css("div.lefthand-nav li").first.text.split("racquets")
  #   brand_array = brands.join.gsub("Racquets", "").split
  #   brand_array[1..9].each.with_index(1) do |brand, i|
  #     puts "#{i}. #{brand}"
  #     # binding.pry
  #   end
  # end

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
