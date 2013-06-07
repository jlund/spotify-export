#!/usr/bin/env ruby

require 'bundler/setup'
require 'fileutils'
require_relative '../lib/spotify-playlist'

# Copy the template SQLite file for new users, unless it
# already exists
unless File.exist?("#{ ROOT }/db/spotify-cache.db")
  FileUtils.cp("#{ ROOT }/db/spotify-cache-template.db",
               "#{ ROOT }/db/spotify-cache.db")
end

playlist = SpotifyPlaylist.new(ARGV.first)

playlist.tracks.each_with_index do |track, count|
  # Sanity check
  unless track.nil?
    puts "#{count + 1}. #{ track.name } -- #{ track.artist } -- #{ track.album }"
  end
end
