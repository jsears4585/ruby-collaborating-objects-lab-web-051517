class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize name
    @name = name
    @songs = []
    self.save
  end

  def add_song song
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name name
    # return_artist = nil
    # @@all.each do |obj|
    #   if obj.name = name
    #     return obj
    #   end
    # end
    # return_artist = self.new(name)
    if @@all.detect{|artist| artist.name == name} == nil
      self.new(name)
    else @@all.detect{|artist| artist.name == name} end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
