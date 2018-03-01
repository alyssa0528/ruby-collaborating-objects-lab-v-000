require 'pry'
class Song 
  attr_accessor :name, :artist
  
  #keep all song instances here
  @@all = []
  
  #initialize every song instance with a name 
  def initialize(name)
    @name = name
  end 
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self 
    self
  end 
  
  #Class method that takes a file, parses filename info, and creates a new song instance with that filename 

  def self.new_by_filename(file) 
      artist = file.split(" - ")[0] #splits file at dashes, takes the first index (artist)
      song = file.split(" - ")[1] #takes second index
      new_song = self.new(song) #initialize with song from line 21
      new_artist = 
      new_song.artist_name = artist
      new_song.save
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end 
end 