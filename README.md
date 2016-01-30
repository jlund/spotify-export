spotify-export
==============

Description
-----------
Let's convert a Spotify playlist into plain text!

1. Open Spotify and go to the playlist that you want to export
2. Select the tracks that you want to export (Ctrl-A or Cmd-A to Select All)
3. Right-click on the selected tracks and choose "Copy Spotify URI" from the menu
4. Go to the text editor of your choice and Paste
5. Save the file
6. Run ./bin/spotify-export.rb your-filename.txt

Running the command on the included spec/support/multiple-tracks.txt test file will produce the following output:

    1. Illusions -- Shout Out Louds -- Optica (Bonus Track Version)
    2. My Number -- Foals -- Holy Fire
    3. Love to Get Used -- Matt Pond -- The Lives Inside The Lines In Your Hand
    4. Clouds -- Rangleklods -- Beekeeper (incl. Home EP)
    5. Kelly -- When Saints Go Machine -- Konkylie

Listening to the songs might be fun too.

Enjoy!


Features
--------
* Lookups are performed using the super-efficient Spotify Web API
* SQLite is used as a caching layer so that URIs will only be requested once, which allows you to regularly back up large playlists


Requirements
------------
* [Ruby](http://www.ruby-lang.org/en/) 2.1 or higher
* [Bundler](http://gembundler.com/)
* [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord)
* [RSpec](http://rspec.info/)
* [Ruby/ProgressBar](https://github.com/jfelchner/ruby-progressbar)
* [SQLite3](https://github.com/luislavena/sqlite3-ruby) and a working [SQLite](http://www.sqlite.org/) binary


Setup
-----
* bundle install


Acknowledgments
---------------
This product uses a SPOTIFY API but is not endorsed, certified or otherwise approved in any way by Spotify. Spotify is the registered trade mark of the Spotify Group.
