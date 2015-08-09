# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DinnerCooker.create(name: "Brantley Beaird")
DinnerCooker.create(name: "Sam Turner")
DinnerCooker.create(name: "Alex S")

brantley = DinnerCooker.where(name: "Brantley Beaird").first
sam = DinnerCooker.where(name: "Sam Turner").first
alex = DinnerCooker.where(name: "Alex S").first

brantley.dinners.build(date_cooked: Date.new(2015, 5, 3)).save
brantley.dinners.build(date_cooked: Date.new(2015, 4, 3)).save
brantley.dinners.build(date_cooked: Date.new(2015, 3, 3)).save
sam.dinners.build(date_cooked: Date.new(2015, 4, 1)).save
sam.dinners.build(date_cooked: Date.new(2015, 4, 15)).save
alex.dinners.build(date_cooked: Date.new(2015, 3, 1)).save
alex.dinners.build(date_cooked: Date.new(2015, 2, 15)).save