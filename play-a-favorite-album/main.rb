#!/usr/bin/env ruby

results = system("zsh", "./write-favorite-albums-to-file.sh")

favorite_albums = File.read("./favorite-albums.txt").split("\n").map(&:strip)

album_to_play = favorite_albums.sample

puts "Preparing to play #{album_to_play}"

system("zsh", "./am.sh", "play", "-r", album_to_play)
