class Movie
    attr_accessor :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def characters
        Character.all.select {|character| character.show_or_movie == self}
    end

    def actors
        characters.map{|character|character.actor}.uniq
    end

    def self.most_actors
        Movie.all.max_by{|movie|movie.actors.length}

    end


end