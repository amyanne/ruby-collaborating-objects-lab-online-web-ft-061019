require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir[@path+"/*.mp3"].map do |file|
      file.split("/").last
    end 
  end
    
  def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end
end