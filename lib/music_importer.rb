class MusicImporter

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*").collect{ |f| f.gsub("#{path}/", "") }
  end

end
