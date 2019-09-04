class Dessert

    attr_accessor :name, :calories 
    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories 
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end

    def bakery
        ingredients.map {|ingredient| ingredient.bakery}.uniq
    end


end