spotify-export
==============

Changelog
---------
* 1.0
  * Complete rewrite
  * Added Gemfile for Bundler support
  * Added RSpec tests
  * Implemented caching of track information using SQLite for dramatically better performance. **Now you can regularly back up your constantly-growing Starred playlist, even if it contains hundreds and hundreds of tracks!**
* 0.2 -- Added support for album names
* 0.1 -- Initial release


Description
-----------
Let's convert a Spotify playlist into plain text!

1. Open Spotify and go to the playlist that you want to export
2. Select the tracks that you want to export (Ctrl-A to Select All)
3. Right-click on the selected tracks and choose "Copy HTTP Link" from the menu
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


Requirements
------------
* [Ruby](http://www.ruby-lang.org/en/)
* [Bundler](http://gembundler.com/)
* [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord)
* [HTMLEntities](https://github.com/threedaymonk/htmlentities)
* [RSpec](http://rspec.info/)
* [SQLite3](https://github.com/luislavena/sqlite3-ruby) and a working [SQLite](http://www.sqlite.org/) binary


Setup
-----
* bundle install


Caveats
-------
* Sometimes Spotify returns a 404 error for a particular track. Sometimes it will work when you try it the next day. Sometimes it means that there is a new version of that track available, with a different (and working) link. There's no rhyme or reason to it. Thankfully, it's rare.

  A future version of this library will deal with the issue, but for now 404 responses are not cached (so it's easy to retry) and tracks suffering from this problem will appear as " -- -- " in your exports.

* Ruby 1.8.7 used to work, but it won't anymore. Ruby 1.9.3 works perfectly. I haven't tried this on Ruby 2.0 yet.


License
-------
The MIT License (MIT)

Copyright (c) 2012-2013 Joshua Lund

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
