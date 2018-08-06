class MP3Importer

  attr_accessor :path

  def initialize(path) #./db/mp3s
    @path = path
  end

  def files
    Dir.entries(path)
  end

end
