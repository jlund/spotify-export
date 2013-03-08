#!/usr/bin/env ruby

require 'bundler/setup'
require_relative '../lib/spotify-playlist'

playlist = SpotifyPlaylist.new(ARGV.first)

playlist.tracks.each_with_index do |track, count|
  puts "#{count + 1}. #{ track.name } -- #{ track.artist } -- #{ track.album }"
end
