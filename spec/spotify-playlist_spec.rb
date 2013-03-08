require 'spec_helper'

describe SpotifyPlaylist do

  let(:filename) { 'spec/support/single-track.txt' }
  let(:playlist) { SpotifyPlaylist.new(filename) }

  describe ".new" do
    context "if no filename is provided" do
      it "raises a MissingFileError" do
        expect { SpotifyPlaylist.new }.to raise_error(SpotifyPlaylist::MissingFileError)
      end
    end

    context "if the specified file does not exist" do
      it "raises a MissingFileError" do
        expect { SpotifyPlaylist.new('spec/support/asdf.txt') }.to raise_error(SpotifyPlaylist::MissingFileError)
      end
    end
  end

  describe "#tracks" do
    it "returns an array" do
      playlist.tracks.class.should equal Array
    end

    it "contains SpotifyTrack objects" do
      playlist.tracks.first.class.should equal SpotifyTrack
    end
  end

end
