class RestaurantOwner

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select {|restaurant| restaurant.owner == self}
    end

    def menu_items
       self.restaurants.collect {|restaurant| restaurant.menu_items}
    end

    def RestaurantOwner.average_age
        RestaurantOwner.all.sum {|owner| owner.age} / RestaurantOwner.all.count
    end

    def sell_restaurant(restaurant, buyer)
        self.restaurants.find {|restaurant_instance| restaurant_instance == restaurant}.owner = buyer
    end 


end