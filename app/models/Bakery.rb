require "pry"
class Bakery

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.bakery == self}
    end

    def desserts
        ingredients.map {|ingredient|ingredient.dessert}
    end

    def shopping_list
        ingredients.map {|ingredient|ingredient.name}
    end

    def average_calories
        desserts.sum {|dessert|dessert.calories}.to_f/
        desserts.length
    end
    
end