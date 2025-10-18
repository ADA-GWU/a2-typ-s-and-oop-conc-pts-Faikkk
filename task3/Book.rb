class Book < LibraryItem
    attr_accessor :language
    
    def initialize(title, author, publication_year, genre, language = "English")
        super(title, author, publication_year, genre)
        @language = language
    end

    def display_info
        super
        puts "Language: #{@language}"
    end

    def read
        puts "You are reading #{@title} by author #{@author} published in #{@publication_year} of genre #{@genre} in #{@language}"
    end
end
