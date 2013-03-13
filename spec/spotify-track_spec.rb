# encoding: utf-8
require 'spec_helper'

describe SpotifyTrack do

  let(:filename) { 'spec/support/single-track.txt' }
  let(:playlist) { SpotifyPlaylist.new(filename) }
  let(:track)    { playlist.tracks.first }

  describe "#name" do
    it "should return the track name" do
      track.name.should == "Fineshrine"
    end

    it "properly handles UTF-8 characters" do
      playlist = SpotifyPlaylist.new('spec/support/utf8-track.txt')
      playlist.tracks.first.name.should == "Gangnam Style (강남스타일)"
    end

    it "properly retrieves track names that contain the word 'by'" do
      playlist = SpotifyPlaylist.new('spec/support/by-track.txt')
      playlist.tracks.first.name.should == "Play by Play"
    end
  end

  describe "#artist" do
    it "should return the track artist" do
      track.artist.should == "Purity Ring"
    end

    it "properly handles HTML entities" do
      playlist = SpotifyPlaylist.new('spec/support/html-entities-track.txt')
      playlist.tracks.first.artist.should == "Niki & The Dove"
    end
  end

  describe "#album" do
    it "should return the track album" do
      track.album.should == "Shrines"
    end
  end

end
