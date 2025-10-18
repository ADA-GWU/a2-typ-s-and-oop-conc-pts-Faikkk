class DVD < LibraryItem
    attr_accessor :rating
    
    def initialize(title, author, publication_year, genre, rating = "G")
        super(title, author, publication_year, genre)
        @rating = rating
    end

    def display_info
        super
        puts "Rating: #{@rating}"
    end

    def play
        puts "DVD #{@title} by #{@author} is being played of genre #{@genre} with rating of #{@rating}"
    end
end