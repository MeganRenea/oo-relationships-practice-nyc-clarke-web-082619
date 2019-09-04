class Ingredient

    attr_accessor :name, :bakery, :dessert
    @@all = []

    def initialize(name, bakery, dessert)
        @name = name
        @bakery = bakery
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        all.select {|ing|ing.name.include?(ingredient)}
    end

    
end