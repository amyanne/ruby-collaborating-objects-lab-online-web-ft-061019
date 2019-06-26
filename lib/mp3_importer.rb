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
    
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  end
end