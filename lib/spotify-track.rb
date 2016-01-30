require 'net/https'
require 'json'
require_relative 'spotify-cache'

class SpotifyTrack
  attr_reader :local, :uri

  def initialize(uri)
    @local = uri.include? ':local:'
    @uri   = uri
  end

  def album
    attributes[:album]
  end

  def artist
    attributes[:artist]
  end

  def name
    attributes[:name]
  end

  private

  def attributes
    @attributes ||= begin
      cache = SpotifyCache.where(uri: uri).first

      if cache.blank?
        get_track_attributes
      else
        { name: cache[:name], artist: cache[:artist], album: cache[:album] } 
      end
    end
  end

  def cache_track(cache_name, cache_artist, cache_album)
    SpotifyCache.create(uri: uri,
                        name: cache_name,
                        artist: cache_artist,
                        album: cache_album)
  end

  def format_artists(artists)
    artist_list = []

    artists.each do |artist|
      artist_list << artist["name"]
    end

    artist_list.join(", ")
  end

  def get_track_attributes
    uriArr = uri.split(':')
    if local
      # The array should be length 6
      # ["spotify", "local", "artist", "album", "song title", "duration"]
      name   = URI.decode(uriArr[4].gsub('+', ' '))
      album  = URI.decode(uriArr[3].gsub('+', ' '))
      artist = URI.decode(uriArr[2].gsub('+', ' '))
    else
      track_id = uriArr[2]
      target  = URI.parse("https://api.spotify.com/v1/tracks/#{ track_id }")
      http    = Net::HTTP.new(target.host, target.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(target.request_uri)

      begin
        response = http.request(request)
        json     = JSON.parse(response.body)
      rescue Errno::ECONNREFUSED, JSON::ParserError
        puts "Spotify API error. Retrying in five seconds..."
        sleep 5
        retry
      end

      name   =  json["name"]
      artist =  format_artists( json["artists"] )
      album  =  json["album"]["name"]
      cache_track(name, artist, album) if response.code == "200"
    end

    { name: name, artist: artist, album: album } 
  end

end
