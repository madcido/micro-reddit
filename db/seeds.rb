# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Daniel")
User.create(username: "Fabio")

Post.create(content: "Daniel Post", user_id: 1)
Post.create(content: "Fabio Post", user_id: 2)

Comment.create(content: "Daniel comment on Daniel post", user_id: 1, post_id: 1)
Comment.create(content: "Daniel comment on Fabio post", user_id: 1, post_id: 2)
Comment.create(content: "Fabio comment on Daniel post", user_id: 2, post_id: 1)
Comment.create(content: "Fabio comment on Fabio post", user_id: 2, post_id: 2)