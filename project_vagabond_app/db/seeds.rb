# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.create({city: 'San Francisco', country: "United States of America", population: 837442, picture: "http://www.sanfrancisco.travel/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg"})
City.create({city: 'New York City', country: 'United States of America', population: 8406000, picture: 'http://www.frontpagemag.com/wp-content/uploads/2013/07/New-York-City-Skyline.jpg'})
City.create({city: 'London', country: 'United Kingdom', population: 8308000, picture: 'http://www.clinkhostels.com/wp-content/uploads/2015/03/london22.jpg'})
City.create({city: 'Shanghai', country: "China", population: 14350000, picture: 'http://i.telegraph.co.uk/multimedia/archive/02639/gensler_shanghai_t_2639126k.jpg'})

User.create({first_name: "Connor", last_name: "Slakey", email: "connor@slakey.com", password: "Connor", current_city: 'San Francisco'})
User.create({first_name: "Connor", last_name: "Stanley", email: "connor@stanley.com", password: "Connor", current_city: 'San Francisco'})
User.create({first_name: "Daniel", last_name: "Gih", email: "daniel@gih.com", password: "Daniel", current_city: 'New York City'})
User.create({first_name: "Daimeion", last_name: "Pilcher", email: "daimeion@pilcher.com", password: "Daimeion", current_city: 'London'})