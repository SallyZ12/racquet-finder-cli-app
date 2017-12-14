class RacquetFinder::CLI

    def call

      RacquetFinder::Scraper.scrape_brands
      puts "Welcome to the World of Tennis Racquets"
      menu
    end


    def menu
      puts ""
         puts "To select available Racquets by Brand, start by selecting the Brand by Number"

         list_brands
         input = gets.strip.to_i
         puts ""
         if input.between?(1,4)
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
            puts "Nice choice -- you are a Champion!"
            puts ""
            options
          else
            puts "Incorrect Entry -- Select Again"
            menu
          end
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
          puts "#{i}. #{brand.brand_name}"
        end
      end

      def list_brand(input)
        brand = RacquetFinder::Brand.find_brand(input)
        puts "#{brand.brand_name}"
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
