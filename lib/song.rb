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
      split_file = file.split(" - ")
      song = self.new(split_file[1]) #initialize with song from line 21
      artist = Artist.find_or_create_by_name(split_file[0])
      song.artist = artist
      new_song.save
  end 
end 