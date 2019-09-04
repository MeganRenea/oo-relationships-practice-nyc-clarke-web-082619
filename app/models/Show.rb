# create files for your ruby classes in this directory
class Show

    attr_accessor :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def on_the_big_screen
        Movie.all.select {|movie|movie.title == self.title}
    end

end