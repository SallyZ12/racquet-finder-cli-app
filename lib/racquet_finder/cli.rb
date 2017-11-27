class RacquetFinder::CLI

  #testing scraper in CLI
  # def scrape_racquet_brand
  #   doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
  #   brands = doc.css("div.lefthand-nav li").first.text.split("racquets")
  #   brand_array = brands.join.gsub("Racquets", "").split
  #   puts "Tennis Brands To Choose From:"
  #   brand_array[1..10].each.with_index(1) do |brand, i|
  #     puts "#{i}. #{brand}"
  #   end
  # end

  def scrape_racquet_model
    doc = Nokogiri::HTML(open("http://www.midwestsports.com/head-tennis-racquets/c/104/"))
    models = doc.css("div.lefthand-nav li").first.text.split("Head")
    model_array = models.join.gsub("Head", "").split
    binding.pry
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
