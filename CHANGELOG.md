#### 1.1
* Requests are now made using the [Spotify Web API](http://developer.spotify.com/technologies/web-api/).
  * Spotify URIs have replaced HTTP Links. **Please see the updated instructions.**
  * This also, unfortunately, will invalidate your existing cache. But it's worth it!
* Bandwidth usage has been drastically reduced
  * The JSON response for one of the test tracks is only 486 bytes, compared to 19,753 bytes for the HTML version of the same track
* The 404 issue (where some tracks were coming back blank) is resolved!
* The JSON API does not return HTML entities, so that gem dependency has been removed
* Tracks with multiple artists are now exported properly. Rap fans, I got you.

#### 1.0.1
* Fixed a bug where track names containing the word 'by' were not properly exported

#### 1.0
* Complete rewrite
* Added Gemfile for Bundler support
* Added RSpec tests
* Implemented caching of track information using SQLite for dramatically better performance. **Now you can regularly back up your constantly-growing Starred playlist, even if it contains hundreds and hundreds of tracks!**

#### 0.2
* Added support for album names

#### 0.1
* Initial release
