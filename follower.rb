class Followers #is this class necessary? 
    attr_accessor :followers, :name, :song, :artist

    @@all = [] 

    def initialize(followers)
        @@followers = followers
    end

    def self.all 
        @@all
    end
end
