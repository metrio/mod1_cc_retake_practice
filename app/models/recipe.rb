class Recipe

    attr_accessor :description
    attr_reader :name

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|menu_item| menu_item.recipe == self}
    end

    def restaurants
        self.menu_items.map {|menu_item| menu_item.restaurant}
    end

    def average_price
        total = self.menu_items.map {|menu_item| menu_item.price}.sum
        total /= self.menu_items.count
        return total.to_i
    end

    def highest_price
        self.menu_items.max {|menu_item_a, menu_item_b| menu_item_a.price <=> menu_item_b.price }
    end
    
    def cheapest_restaurant
        self.menu_items.min {|menu_item_a, menu_item_b| menu_item_a.price <=> menu_item_b.price }
    end

    def self.inactive
        self.all.select {|recipe| recipe.menu_items == []}

    end
    
end