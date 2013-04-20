require_relative 'spotify-track'

class SpotifyPlaylist
  class MissingFileError < StandardError; end

  attr_reader :filename

  def initialize(filename=nil)
    raise MissingFileError, "Usage: spotify-export.rb <filename>" unless filename
    raise MissingFileError, "That file does not exist" unless File.exist?(filename)

    @filename = filename
  end

  def export_targets
    @export_targets ||= File.read(filename).split
  end

  def tracks
    export_targets.map{ |track_uri| SpotifyTrack.new(track_uri) }
  end
end
