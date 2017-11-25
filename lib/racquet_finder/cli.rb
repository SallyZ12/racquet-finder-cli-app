class RacquetFinder::CLI


  def call
    list_racquet_brands
    list_racquet_models
  end

  def list_racquet_brands
    puts "List of Tennis Racquet Brands"
    puts "1. Babolat, 2. Head, 3. Wilson"
  end

  def list_racquet_models
    input = nil
    while input != exit

    puts "1. Head Radical Pro, 2. Head Radical Touch, 3. Head Radical MPA"
    end
  end

end
