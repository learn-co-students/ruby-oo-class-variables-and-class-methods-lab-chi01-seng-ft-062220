class Song
    attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        unique_count = {}
        unique_genres = self.genres
        unique_genres.map do |genre|
            genre_count = @@genres.count(genre)
            unique_count[genre] = genre_count
        end
        unique_count
    end

    def self.artist_count
        unique_count = {}
        unique_artists = self.artists
        unique_artists.map do |artist|
            artist_count = @@artists.count(artist)
            unique_count[artist] = artist_count
        end
        unique_count
    end
end