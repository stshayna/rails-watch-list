require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

url = URI.open('https://tmdb.lewagon.com/movie/top_rated').read
doc = JSON.parse(url)

doc['results'][0..11].each do |hash|
  Movie.create!(
    title: hash['original_title'],
    overview: hash['overview'],
    poster_url: "https://image.tmdb.org/t/p/original/#{hash['poster_path']}",
    rating: hash['vote_average']
  )
end
