class Playlist #is this class necessary? 
    attr_accessor :playlist, :name, :song, :artist

    @@all = [] 

    def initialize(playlist)
        @@playlist = playlist
    end

    def self.all 
        @@all
    end
end
