require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        new_artist = file_name.split(" - ")[0] #creating these 2 variables to store what i am passing via filename, it is data manipulation
        new_song = file_name.split(" - ")[1]
        song_1 = self.new(new_song) # #<Song:0x00007fffe9c02bc8 @name="Black or White">
        artist_1 = Artist.new(new_artist)
        song_1.artist = artist_1
        #  binding.pry
        song_1

        # song  = self.new(new_song)
        
    #    new_file = self.new(file_name)
    end


    def artist_name=(artist_name)
       
        self.artist = Artist.find_or_create_by_name(artist_name)
        
    #     binding.pry
     end

     


end