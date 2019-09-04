class Listing
    attr_accessor :house_or_apt, :city

    def initialize(house_or_apt,city)
        @house_or_apt = house_or_apt
        @city = city
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip|trip.listing == self}
    end

    def guests
        trips.map {|trip|trip.guest}
    end

    def trip_count
        trips.count 
    end

    def self.find_all_by_city(city)
        all.select {|l|l.city == city}
    end

    def self.most_popular
        hash = all.reduce({}) do |hash, listing|
            hash[listing] = listing.trip_count
            hash
        end
        hash.sort_by {|k, v| -v}.first[0]
    end

end