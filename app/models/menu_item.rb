class MenuItem
    
    attr_accessor :price
    attr_reader :restaurant, :recipe

    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def owner
        self.restaurant.owner
    end

    def self.most_expensive_item
        self.all.max {|menu_item_a, menu_item_b| menu_item_a.price <=> menu_item_b.price}
    end
end