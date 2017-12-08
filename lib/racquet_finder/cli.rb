class RacquetFinder::CLI

    def call
      RacquetFinder::Scraper.scrape_brands
      puts "Welcome to the World of Tennis Racquets"
    end

    def start
        puts ""
        puts ""
        puts "To select a Racquet start by selecting the Brand by Number"
        puts ""
        list_brands
        puts ""
        puts ""
        input = gets.strip


        user_brand = RacquetFinder::Brand.find_brand(input)

        list_racquets(user_brand)


        puts "Would you like to select another racquet? Enter Y or N"

          input = gets.strip.downcase
            if input == "y"
                start
            else
              puts "Thanks enjoy your racquet!"
            end
          end



      def list_brands
          puts "Racquet Brands"

      RacquetFinder::Brand.all_brands[0..2].each.with_index(1) do |brand, i|
          puts "#{i}. #{brand}"
        end
      end

      def list_racquets(user_brand)
          RacquetFinder::Scraper.scrape_racquets(user_brand)
      end




end
