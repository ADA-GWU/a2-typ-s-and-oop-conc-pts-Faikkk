class CD < LibraryItem
    attr_accessor :duration
    
    def initialize(title, author, publication_year, genre, duration = "1 hour")
        super(title, author, publication_year, genre)
        @duration = duration
    end

    def display_info
        super
        puts "Duration: #{@duration}"
    end

    def listen
        puts "CD #{@title} by author #{@author} published in #{@publication_year}} of genre #{@genre} with duration of #{@duration}"
    end
end