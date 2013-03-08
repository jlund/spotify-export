require 'active_record'

# So excited for __dir__ in Ruby 2.0!
ROOT = "#{ File.dirname(File.expand_path(__FILE__)) }/.."

class SpotifyCache < ActiveRecord::Base
  establish_connection(
    adapter: "sqlite3",
    database: "#{ ROOT }/db/spotify-cache.db"
  )
end
