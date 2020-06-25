require "pry"
class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
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

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1
          end
        end
        artist_count
      end
  
      def self.genres
        @@genres.uniq
      end
  
      def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end
    

end 
#binding.pry 
#ninety_nine_problems = Song.new("99Problems", "Jay-Z", "rap")
#ninety_nine_problems.name 
#nintey_nine_problems.artist
#nintey_nine_problems.genre


#binding.pry 