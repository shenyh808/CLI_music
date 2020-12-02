class Artist 
    attr_accessor :name, artist, :song 

    @@all = [] 

    def initialize(name, artist, song)
        @@name = name
        @@artist = artist 
        @@song = song
    end

    def find_artist_by_name(name)
        @@all.detect {|artist| artist.name == name}
    end

    def new_song(name, artist, genre)
        Song.new(name, genre)
    end
   
    def songs
        Song.all.select do |song|
          song.artist == self
        end
    end
   
    def genres
        songs.collect do |song|
          song.genre
        end
    end

    def self.count 
        @@all.size
    end

    def self.all 
        @@all
    end

end
