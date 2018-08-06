class MP3Importer

  attr_accessor :path

  def initialize(path) #./db/mp3s
    @path = path
  end

  def files
    documents = Dir.entries(path)
    mp3s = []
    documents.each do |file|
      if file.match(/.mp3$/)
        mp3s << file
      end
    end
    mp3s
  end

  def import
    importFiles = files
    importFiles.each do |fileName|
      newSong = Song.new_by_filename(fileName)
    end
  end
end
