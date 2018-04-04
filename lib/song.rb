class Song
    # attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}


    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << name if !@@artists.include?(artist)
        @@genres << genres if !@@genres.include?(genre)
        @@genres.each do |genre|
            @@genre_count[genre] += 1
        end
        @@artists.each do |artist|
            @@artist_count[artist] += 1
        end

        @name = name
        @artist = artist
        @genre = genre
    end


end
