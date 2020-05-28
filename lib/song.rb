class Song
  attr_accessor :name, :artist, :genre
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @@count += 1
  end

  def self.count
    return @@count
  end
end
