class RacquetFinder::Scraper


  def self.scrape_brands
    doc = Nokogiri::HTML(open("http://www.midwestsports.com"))


        brand_name = doc.css("ul.subcat li a")
        brand_name.each do |b|

        RacquetFinder::Brand.new_brand(b)
        end
      end



  def scrape_racquets(user_brand)
    
          doc = Nokogiri::HTML(open(user_brand.brand_url))


          racquet_type = doc.css("li.whole")
          racquet_type.each do |r|

            binding.pry

            RacquetFinder::Racquet.new_racquet(r)

          end
        end


end
