# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

owners = Owner.create!([{ name: 'Jhon' }, { name: 'Adam' }, { name: 'Eve' }]);

owners.each do |owner|
  (1..2).each do |index|
    number = rand(1..1000)
    owner.articles.create(name: "Article Title #{number}", description: ' lorem ipsum is simply dummy text', price: "$100#{number}")
  end
end
