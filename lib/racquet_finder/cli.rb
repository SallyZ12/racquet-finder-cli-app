class RacquetFinder::CLI

    def call

      RacquetFinder::Scraper.scrape_brands
      puts "Welcome to the World of Tennis Racquets"
      menu
      options
    end


    def menu
      puts ""
         puts "To select available Racquets by Brand, start by selecting the Brand by Number"
         puts ""

         list_brands
         puts ""
         input = gets.strip.to_i
         puts ""

         user_brand = RacquetFinder::Brand.find_brand(input)

         puts " You have selected the Brand:"
         puts""
         list_brand(input)
         puts ""

         puts "Available Racquets:"
          puts ""
          list_racquets(user_brand)
          puts ""

          puts "Enter the Number of the Racquet you wish to buy:"
          input = gets.strip.to_i

          puts ""
          puts "You Have Selected:"
          puts ""
          list_racquet(input)
          puts ""
        end

    def options
      puts "Would you like to select another racquet? Enter Y or N"

            input = gets.strip.downcase
              if input == "y"
                RacquetFinder::Racquet.clear_all
                  menu
              else
                puts ""
                puts "Thanks enjoy your Racquet!"
              end
      end



      def list_brands
          puts "Racquet Brands"

      RacquetFinder::Brand.all_brands.each.with_index(1) do |brand, i|
          puts "#{i}. #{brand.brand}"
        end
      end

      def list_brand(input)
        brand = RacquetFinder::Brand.find_brand(input)
        puts "#{brand.brand}"
      end


      def list_racquets(user_brand)
          r = RacquetFinder::Scraper.scrape_racquets(user_brand)

          RacquetFinder::Racquet.all.each.with_index(1) do |name, i|
            puts "#{i}. #{name.racquet_name} -- #{name.price}"
          end
      end

      def list_racquet(input)
        racquet = RacquetFinder::Racquet.find_racquet(input)
        puts "#{racquet.racquet_name} -- #{racquet.price}"
      end
end
