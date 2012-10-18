spotify-export
==============

Let's convert a Spotify playlist into plain text!

1. Open Spotify and go to the playlist that you want to export
2. Select the tracks that you want to export (Ctrl-A to Select All)
3. Right-click on the selected tracks and choose "Copy HTTP Link" from the menu
4. Go to the text editor of your choice and Paste
5. Save the file
6. Run ./spotify-export.rb your-filename.txt

Running the command on the included test.txt file will produce the following output:

    1. Wildest Moments -- Jessie Ware -- Devotion
    2. The Twist -- Frightened Rabbit -- The Midnight Organ Fight
    3. Dark Star -- POLIÇA -- Give You The Ghost
    4. Love Get Out Of My Way -- Monarchy -- Around The Sun
    5. Cookie -- The Presets -- Down Down Down
    6. Make You Mine -- Miami Horror -- Bravado
    7. Don't Deny Your Heart -- Hot Chip -- In Our Heads
    8. The Drummer -- Niki & The Dove -- Instinct
    9. Not In Love -- Crystal Castles and Robert Smith -- (II)
    10. Anyway You Choose To Give It -- The Black Ghosts -- The Black Ghosts

Listening to the songs might be fun too.

Enjoy!

Requirements
------------
* [HTMLEntities](https://github.com/threedaymonk/htmlentities) (gem install htmlentities)


Caveats
-------
I have only tested this on Ruby 1.9.3.


License
-------
The MIT License (MIT)

Copyright (c) 2012 Joshua Lund

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
