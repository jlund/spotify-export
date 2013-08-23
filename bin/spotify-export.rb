#!/usr/bin/env ruby

require 'bundler/setup'
require 'fileutils'
require 'ruby-progressbar'
require_relative '../lib/spotify-playlist'

# Copy the template SQLite file for new users, unless it
# already exists
unless File.exist?("#{ ROOT }/db/spotify-cache.db")
  FileUtils.cp("#{ ROOT }/db/spotify-cache-template.db",
               "#{ ROOT }/db/spotify-cache.db")
end

output      = String.new
playlist    = SpotifyPlaylist.new(ARGV.first)
progressbar = ProgressBar.create(format: "%t: %c/%C |%B|",
                                 total: playlist.tracks.size)

playlist.tracks.each_with_index do |track, count|
  # Sanity check
  unless track.nil?
    output << "#{count + 1}. #{ track.name } -- #{ track.artist } -- #{ track.album }\n"
    progressbar.increment
  end
end

puts output
