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
* [Ruby](http://www.ruby-lang.org/en/) 1.9.3 (or higher?)
* [Bundler](http://gembundler.com/)
* [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord)
* [RSpec](http://rspec.info/)
* [SQLite3](https://github.com/luislavena/sqlite3-ruby) and a working [SQLite](http://www.sqlite.org/) binary


Setup
-----
* bundle install


Caveats
-------
* I haven't tried this on Ruby 2.0 yet.


Acknowledgments
---------------
This product uses a SPOTIFY API but is not endorsed, certified or otherwise approved in any way by Spotify. Spotify is the registered trade mark of the Spotify Group.


License
-------
The MIT License (MIT)

Copyright (c) 2012-2013 Joshua Lund

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
