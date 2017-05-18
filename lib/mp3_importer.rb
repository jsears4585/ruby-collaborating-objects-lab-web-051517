require_relative '../lib/song.rb'

class MP3Importer
  attr_accessor :path, :artist

  def initialize path
    @path = path
  end

  def files
    file_store = []
    Dir.foreach(@path) do |mp3|
      next if mp3 == '.' or mp3 == '..'
      file_store << mp3
    end
    file_store
  end

  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end
end
