class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count +=1
        @@artists << artist
        @@genres << genre
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
        new_hash = {}
        @@genres.each do |type|
           new_hash[type] = @@genres.count(type)
        end
        new_hash
    end
    def self.artist_count 
        new_hash = {}
        @@artists.each do |type|
            new_hash[type] = @@artists.count(type)
         end
         new_hash
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
hit_me_baby_one_more_time = Song.new("hit me baby one more time", "Brittany Spears", "pop")
