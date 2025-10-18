require_relative "LibraryItem"
require_relative "Library"
require_relative "Book"
require_relative "DVD"
require_relative "CD"


class Main
end

def main
  book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming")
  dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Science Fiction")
  cd = CD.new("A Day at the Races", "Queen", 1976, "Rock")

  library = Library.new
  library.add_item(book)
  library.add_item(dvd)
  library.add_item(cd)

  library.display_all_items
end

if __FILE__ == $0
  main
end