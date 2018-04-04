require 'pry'
class Song
    # attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []


    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end


    def self.genre_count
        @@genre_count = {}
        @@genres.each do |genre|
            @@genre_count[genre] = @@genres.count(genre)
        end
    end

    def self.artist_count
        @@artist_count = {}
        @@artists.each do |artist|
            @@artist_count[artist] = @@artists.count(artist)
        end
    end


end
