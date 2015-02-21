# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Genre: Faith
Artist.create!(name: 'Chris Tomlin', genre_id:2)
Song.create!(name: 'Awakening', video: 'https://www.youtube.com/watch?v=0_J9BI6AFO0', artist_id: Artist.last.id)

Artist.create!(name: 'Jeremy Camp', genre_id:2)
Song.create!(name: 'I Will Follow', video: 'https://www.youtube.com/watch?v=1V-WkO5Be8Y', artist_id: Artist.last.id)

Genre.create!(name: 'Rap')
Artist.create!(name: 'LL Cool J', genre_id: Genre.last.id)
Song.create!(name: 'Mama Said Knock You Out', video: 'https://www.youtube.com/watch?v=vimZj8HW0Kg', artist_id: Artist.last.id)

Genre.create!(name: 'Country')
Artist.create!(name: 'Garth Brooks', genre_id: Genre.last.id)
Song.create!(name: 'The Dance', video: 'https://www.youtube.com/watch?v=SUgeyDb7ZXA', artist_id: Artist.last.id)

Genre.create!(name: 'Pop')
# No artists
# No songs

