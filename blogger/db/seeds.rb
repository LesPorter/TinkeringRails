# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bloguser.create!(name: 'Les Porter')
Blog.create!(title: 'All Your Base Are Belong To Us', blog_text: 'Once upon a time...', bloguser_id: Bloguser.last.id)