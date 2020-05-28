class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    return @@count
  end
end
