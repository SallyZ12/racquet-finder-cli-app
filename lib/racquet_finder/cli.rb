class RacquetFinder::CLI

    def call
      RacquetFinder::Scraper.scrape_brands
      puts "Welcome to the World of Tennis Racquets"
    end

    def start
        puts ""
        puts "To select available Racquets by Brand, start by selecting the Brand by Number"
        puts ""
        list_brands
        puts ""
        puts ""
        input = gets.strip.to_i


        user_brand = RacquetFinder::Brand.find_brand(input)

        puts "Available Racquets:"
        puts ""
        list_racquets(user_brand)

        puts ""
        puts "Enter the Number of the Racquet you wish to select:"
          input = gets.strip.to_i
        puts ""

        puts "You Have Selected:"

        list_racquets(user_brand)[input]

        puts ""
        puts ""
        puts "Would you like to select another racquet? Enter Y or N"

          input = gets.strip.downcase
            if input == "y"
                start
            else
              puts "Thanks enjoy your Racquet!"
            end
          end



      def list_brands
          puts "Racquet Brands"

      RacquetFinder::Brand.all_brands[0..2].each.with_index(1) do |brand, i|
          puts "#{i}. #{brand.brand}"
        end
      end


      def list_racquets(user_brand)
          r = RacquetFinder::Scraper.scrape_racquets(user_brand)

          RacquetFinder::Racquet.all[0..5].each.with_index(1) do |name, i|
            puts "#{i}. #{name.racquet_name} -- #{name.price}"
          end
      end





end
