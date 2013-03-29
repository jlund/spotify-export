require 'net/http'
require 'json'
require_relative 'spotify-cache'

class SpotifyTrack
  attr_reader :uri

  def initialize(uri)
    @uri = uri
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
        get_track_attributes_from_api
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

  def get_track_attributes_from_api
    target   = URI.parse("http://ws.spotify.com/lookup/1/.json?uri=#{ uri }")
    http     = Net::HTTP.new(target.host, target.port)
    request  = Net::HTTP::Get.new(target.request_uri)
    response = http.request(request)
    json     = JSON.parse( response.body )

    name   =  json["track"]["name"]
    artist =  format_artists( json["track"]["artists"] )
    album  =  json["track"]["album"]["name"]

    cache_track(name, artist, album) unless response.code == "404"

    { name: name, artist: artist, album: album } 
  end

end
