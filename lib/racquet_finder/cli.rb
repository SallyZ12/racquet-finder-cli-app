class RacquetFinder::CLI

    def call
      puts ""
      puts  "Welcome to the World of Tennis Racquets"
      puts ""
    end

    def start
        RacquetFinder::Scraper.new.scrape_racquet_brands
        puts ""
        puts "To select a Racquet start by selecting the Brand by Number"
        puts ""
        input = gets.strip
        puts ""

        RacquetFinder::Scraper.new.scrape_head_racquets
        puts ""
        puts "Select a Racquet Model"
        input = gets.strip
        puts ""

        RacquetFinder::Scraper.new.scrape_head_radical
        puts ""
        puts "Select a Racquet"
        puts ""
        input = gets.strip
        puts ""
        

        puts "Would you like to select another racquet? Enter Y or N"

          input = gets.strip.downcase
            if input == "y"
                start
            else
              puts "Thanks enjoy your racquet!"
            end
          end
end
