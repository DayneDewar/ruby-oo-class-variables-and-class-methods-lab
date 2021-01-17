require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        dupes = @@genres.group_by {|element| element}
        dupes.each do |k, v|
            dupes[k] = v.size
        end
        dupes
    end

    def self.artist_count
        dupes = @@artists.group_by {|element| element}
        dupes.each do |k, v|
            dupes[k] = v.size
        end
        dupes
    end

end
