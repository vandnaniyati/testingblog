# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 a = Article.create(title:"MVC", body:"mvc is a pattern for the architecture for of a software development")

 10.times do
  Article.create(title:"DRY", body:"Don't repeat yourself")
 end