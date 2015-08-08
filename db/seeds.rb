# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brantley = DinnerCooker.create(name: "Brantley Beaird")
DinnerCooker.create(name: "Sam Turner")
DinnerCooker.create(name: "Alex S")

brantley.dinners.build(date_cooked: Date.new(2015, 5, 3)).save