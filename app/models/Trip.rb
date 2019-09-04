class Trip
    attr_accessor :listing, :guest
    @@all = []
    def self.all
        @@all
    end

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

end