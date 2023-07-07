class Song
    attr_accessor :name, :artist, :genre
    # An instance variable is responsible for holding information regarding an instance.
    # It is a variable that is available in scope for all instance methods in the class.

    # A class variable is accessible to the entire class — it has class scope.
    # A class method is a method that is called on the class itself, not on the instances of that class.
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    # The self keyword refers to the entire class itself, not to an instance of the class.
    # In this case, we are inside the class only, not inside an instance method of that class.
    # So, we are in the class scope, not the instance scope.
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
        genre_count = {}
        # Create an empty hash called genre_count to store the genre counts.
        @@genres.each do |genre|
            # Check if the genre already exists as a key in the genre_count hash.
            if genre_count[genre]
                # If the genre key exists, increment the corresponding count value by 1.
                genre_count[genre] += 1
            else
                # If the genre key doesn't exist, create a new key-value pair in the genre_count hash with the genre as the key and set the count value to 1.
                genre_count[genre] = 1
            end
        end
        genre_count
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

end