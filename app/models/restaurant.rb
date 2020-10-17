class Restaurant

    attr_accessor :owner, :name, :star_rating 

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|menu_item| menu_item.restaurant == self}
    end

    def recipes
        self.menu_items.map {|menu_item| menu_item.recipe}
    end

    def has_dish?(recipe)
        self.menu_items.map {|menu_item| menu_item.recipe == recipe}.pop
    end

    def self.highest_rated
        self.all.max {|restaurant_a, restaurant_b| restaurant_a.star_rating <=> restaurant_b.star_rating}
    end
end