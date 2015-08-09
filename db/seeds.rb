# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# real people
brantley_beaird = DinnerCooker.create(name: "Brantley Beaird", move_in_date: Date.new(2015, 4, 1))
sam_turner = DinnerCooker.create(name: "Sam Turner")
alex_seyfert = DinnerCooker.create(name: "Alex Seyfert")
steve_zelaznik = DinnerCooker.create(name: "Steve Zelaznik", move_in_date: Date.new(2015, 6, 19))
mike_lam = DinnerCooker.create(name: "Mike Lam", move_in_date: Date.new(2015, 11, 1))
connor_young = DinnerCooker.create(name: "Connor Young")


# real dinners cooked
brantley_beaird.dinners.build(date_cooked: Date.new(2015, 5, 3)).save
steve_zelaznik.dinners.build(date_cooked: Date.new(2015, 8, 2)).save
mike_lam.dinners.build(date_cooked: Date.new(2015, 3, 8)).save
mike_lam.dinners.build(date_cooked: Date.new(2015, 3, 29)).save
mike_lam.dinners.build(date_cooked: Date.new(2015, 2, 1)).save

# made up data
sam_turner.dinners.build(date_cooked: Date.new(2015, 4, 1)).save
sam_turner.dinners.build(date_cooked: Date.new(2015, 4, 15)).save
alex_seyfert.dinners.build(date_cooked: Date.new(2015, 3, 1)).save
alex_seyfert.dinners.build(date_cooked: Date.new(2015, 2, 15)).save

