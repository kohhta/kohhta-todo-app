# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# jon = User.create!(email: 'john@example.com', password: 'password')
# emily = User.create!(email: 'emily@example.com', password: 'password')


# Article.create({title: '新しくすること', content: 'オフィスデスクの掃除をする'})
# Article.create({title: '必須事項', content: '明日までに経費精算提出する'})

Board.create({title: 'Board', content: 'オフィスデスクの掃除をする',user_id:'10'})
Board.create({title: '必須事項', content: '明日までに経費精算提出する',user_id: '11'})

