class MP3Importer

  attr_accessor :path

  def initialize(path) #./db/mp3s
    @path = path
  end

  def files
    documents = Dir.entries(path)
    documents.each do |file|
      file.match(/.mp3$/)
    end 
    
  end

end
