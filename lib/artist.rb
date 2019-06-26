class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    SONG = []
  end 
  
  def add_song(song)
    SONG << song
  end 
    
end 