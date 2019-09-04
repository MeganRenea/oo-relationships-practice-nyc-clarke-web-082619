class Character
    attr_accessor :name, :actor, :show_or_movie
    @@all = []

    def initialize(name, actor, show_or_movie)
        @name = name
        @actor = actor
        @show_or_movie = show_or_movie
        @@all << self
    end

    def self.all
        @@all
    end

    def add_show_or_movie(show_movie)
        show_or_movie << show_movie
    end


    def self.most_appearances
        hash = all.reduce({}) do |hash, character|
            hash[character.name] ||= []
            hash[character.name] << character.show_or_movie
            hash
        end
        hash.max_by {|k,v|v.length}[0]
    end

      
end