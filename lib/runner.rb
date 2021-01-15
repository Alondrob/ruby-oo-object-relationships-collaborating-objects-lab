require 'pry'

require_relative 'mp3_importer.rb'
require_relative 'artist.rb'
require_relative 'song.rb'

#Artist

artist = Artist.new('Michael Jackson')
prince = Artist.new('Prince')
 Artist.all





#song
# describe '#name=' do
song = Song.new('Man in the Mirror')
p song.name = 'Thriller'

# describe '#artist=' do
song = Song.new('Man in the Mirror')