#### 1.3
* A lovely progress bar is now included
* Spotify API errors are handled more gracefully
  * "502 Bad Gateway" responses will no longer cause the program to crash
  * Failed requests are automatically retried after five seconds

#### 1.4
* Added support for playlists comprised of Song Links in addition to Spotify URIs in order to solve a common mistake.
* Updated gem versions.
* Retroactively added a 1.3 CHANGELOG entry.

#### 1.3
* Updated to the new Spotify API and response format (contributed by Stephen Fuller).
* Refactored tests for the latest version of RSpec and fixed a few that were broken.
* Deprecated support for Ruby 1.9.3.
* README cleanup and reformatting.
* Updated gem versions.

#### 1.2
* Added support for playlists that contain Local Files (contributed by Christopher Nguyen).
* Changed the way that the SQLite database is handled:
  * Your personal track cache is now ignored by git.
  * For new users, the repository contains a database template file that spotify-export will copy to the proper location if it doesn't already exist.
  * **Current users who would like to merge these changes will need to temporarily move their SQLite cache file elsewhere, checkout the original version, pull the latest commits, and then move their database back.** Git will otherwise complain about merge conflicts. I sincerely apologize for the hassle; I really should have done it this way from the very beginning (thanks to Christopher Nguyen for this insight as well).

#### 1.1
* Requests are now made using the [Spotify Web API](http://developer.spotify.com/technologies/web-api/)
  * Spotify URIs have replaced HTTP Links. **Please see the updated instructions.**
  * This also, unfortunately, will invalidate your existing cache. But it's worth it!
* Bandwidth usage has been drastically reduced:
  * The JSON response for one of the test tracks is only 486 bytes, compared to 19,753 bytes for the HTML version of the same track.
* The 404 issue (where some tracks were coming back blank) is resolved!
* The JSON API does not return HTML entities, so that gem dependency has been removed.
* Tracks with multiple artists are now exported properly. Rap fans, I got you.

#### 1.0.1
* Fixed a bug where track names containing the word 'by' were not properly exported.

#### 1.0
* Complete rewrite.
* Added Gemfile for Bundler support.
* Added RSpec tests.
* Implemented caching of track information using SQLite for dramatically better performance. **Now you can regularly back up your constantly-growing Starred playlist, even if it contains hundreds and hundreds of tracks!**

#### 0.2
* Added support for album names.

#### 0.1
* Initial release.
