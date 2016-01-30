# encoding: utf-8
require 'spec_helper'

describe SpotifyTrack do

  let(:filename) { 'spec/support/single-track.txt' }
  let(:playlist) { SpotifyPlaylist.new(filename) }
  let(:track)    { playlist.tracks.first }

  describe "#name" do
    it "should return the track name" do
      expect(track.name).to eq("Fineshrine")
    end

    it "properly handles UTF-8 characters" do
      track = SpotifyPlaylist.new('spec/support/utf8-track.txt').tracks.first
      expect(track.name).to eq("Gangnam Style (강남스타일)")
    end

    it "properly handles local files" do
      track = SpotifyPlaylist.new('spec/support/local-track.txt').tracks.first
      expect(track.name).to eq("Life On Mars?")
    end

    it "properly retrieves track names that contain the word 'by'" do
      track = SpotifyPlaylist.new('spec/support/by-track.txt').tracks.first
      expect(track.name).to eq("Play by Play")
    end
  end

  describe "#artist" do
    it "should return the track artist" do
      expect(track.artist).to eq("Purity Ring")
    end

    it "properly handles HTML entities" do
      track = SpotifyPlaylist.new('spec/support/html-entities-track.txt').tracks.first
      expect(track.artist).to eq("Niki & The Dove")
    end

    it "should return all track artists if there are several" do
      track = SpotifyPlaylist.new('spec/support/multiple-artist-track.txt').tracks.first
      expect(track.artist).to eq("Big Boi, B.o.B, Wavves")
    end
  end

  describe "#album" do
    it "should return the track album" do
      expect(track.album).to eq("Shrines")
    end
  end

end
