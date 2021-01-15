require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)

        @name = name
        @@all << self
        @songs = []

    end

    def self.all
        @@all   
    end
    
    # def songs
    #     artist = self.new
    #     @songs 
    # #     binding.pry
    #  end

     def add_song(song)
        @songs << song   
     end

     def self.find_or_create_by_name(value)
        
         @@all.find {|i| i.name == value} || self.new(value)
       
     end
    
     def print_songs
            songs.each { |song| puts song.name }    
     end
end