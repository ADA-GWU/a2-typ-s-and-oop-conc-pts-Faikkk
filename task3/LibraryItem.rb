class LibraryItem
    attr_accessor :title, :author, :publication_year, :genre

    def initialize(title, author, publication_year, genre)
        @title = title
        @author = author
        @publication_year = publication_year
        @genre = genre
    end


    def display_info()
       puts "Title: #{@title}"
       puts "Author: #{@author}"
       puts "Publication Year: #{@publication_year}"
       puts "Genre: #{@genre}"
    end
end