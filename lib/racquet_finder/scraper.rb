class RacquetFinder::Scraper

  def self.scrape_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))
    brand_name = doc.css("ul.subcat li a")
    brand_name.each do |b|
      b_name = b.text.gsub("\r","").gsub(" Racquets","")
      b_url = b.attr("href").gsub("\r","").gsub(" //","http://")

      RacquetFinder::Brand.new(b_name, b_url)
    end
  end


  def self.scrape_racquets(user_brand)
      doc = Nokogiri::HTML(open(user_brand.brand_url))
      racquet_type = doc.css("li.whole")
      racquet_type.each do |r|
        r_name = r.css("h3 a").children.text.gsub("\r","").gsub("Tennis","").gsub("Racquet","").gsub("  ","")
        r_price = r.css("p.price strong").children.text.gsub("\r","").split(" ").join(" ")

          RacquetFinder::Racquet.new(r_name,r_price)

          end
        end

end
