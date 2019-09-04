class Actor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        Character.all.reduce({}) do |hash, character|
        hash[character.actor] ||= []
        hash[character.actor] << character
        hash
        end.max_by {|k, v|v.length}[0]
    end
end