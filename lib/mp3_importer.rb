require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path

    end

    # binding.pry

    def files

        @files =Dir.entries(@path)
        # binding.pry
        @files.delete_if {|file| file == "." || file == ".."}

    end

    def import

        self.files.each do |filename|
            Song.new_by_filename(filename)
        end
    end

    end






