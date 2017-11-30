class RacquetFinder::CLI

    def call
      puts "Welcome to the World of Tennis Racquets"
    end

    def start
        puts "To select a Racquet start by selecting the Brand by Number"
        puts ""
        list_brands
        puts ""
        puts ""
        input = gets.strip

        if input == "1"
          list_babolat_models
        elsif input == "2"
          list_head_models
          puts " You selected Head Racquets"
        else input == "3"
          list_wilson_models
        end

        list_head_models
        puts ""
        puts "Select a Racquet Model"
        input = gets.strip
        puts ""
        puts " You have selected Radical"
        puts ""

        list_head_radical
        puts ""
        puts "Select a Racquet"
        puts ""
        input = gets.strip
        puts ""

        puts "You have selected Head Graphene Radical Touch Pro at a price of $219.95"
        puts ""


        list_head_speed
        puts ""
        puts "Select a Racquet"
        puts ""
        input = gets.strip
        puts ""

        puts "You have selected Head Graphene Touch Speed Adaptive at a price of $189.95"
        puts ""


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
          @racquets = RacquetFinder::Scraper.new.scrape_racquet_brands
          @racquets[1..3].each.with_index(1) do |brand, i|
            puts "#{i}. #{brand}"
          end
        end


        def list_head_models
          puts "Head Models"
          @head_model =   RacquetFinder::Scraper.new.scrape_head_racquets
          @head_model[0..6].each.with_index(1) do |model, i|
             puts "#{i}. #{model}"
          end
        end

        def list_head_radical
          puts "Head Radical Racquets"
          @head_radical =     RacquetFinder::Scraper.new.scrape_head_radical
          @head_radical[0..3].each.with_index(1) do |type, i|
            puts "#{i}. #{type}"
          end
        end


        def list_head_speed
          puts "Head Speed Racquets"
          @head_speed = RacquetFinder::Scraper.new.scrape_head_speed
          @head_speed[0..3].each.with_index(1) do |type, i|
            puts "#{i}. #{type}"
        end
      end
end
