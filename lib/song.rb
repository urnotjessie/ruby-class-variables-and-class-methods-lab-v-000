class Song
    # attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}


    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
    end
    def self.count
        @@count += 1
    end

    def self.artists
        @@artists << name if !@@artists.include?(artist)
    end

    def self.genres
        @@genres << genre if !@@genres.include?(genre)
    end

    def self.genre_count
        @@genres.each do |genre|
            @@genre_count[genre] += 1
        end
    end
    @@artists.each do |artist|
        @@artist_count[artist] += 1
    end


end
