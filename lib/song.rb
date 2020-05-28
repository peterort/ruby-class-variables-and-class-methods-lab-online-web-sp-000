class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @@genres << genre
    @artist = artist
    @@artists << artist
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if !hash[genre]
        hash[genre]=1
      else
        hash[genre]+=1
      end
  end
  hash
end
