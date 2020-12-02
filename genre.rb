class Genre
    attr_accessor :name, :song

     @@all = []

    def initialize(name, song)
        @name = name
        @song = song
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end

    # def add_song(song)
    #     songs << song
    # end

     end