class Library
    def initialize
        @items = []
    end


    def add_item(library_item)
        @items << library_item
    end

    # def remove_item
    # end

    def display_all_items
      @items.each do |item|
       puts item.display_info
    end
end
end