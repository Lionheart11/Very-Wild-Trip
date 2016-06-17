# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


melanie = Participant.create(name: 'Mélanie')
richard = Participant.create(name: 'Riku')
dorian = Participant.create(name: 'Dorian')
alex = Participant.create(name: 'Alex')

london = Trip.create(creator: 'Riku', destination: 'Londres', budget: 1500)
paris = Trip.create(creator: 'Riku', destination: 'Paris', budget: 500)
tahiti = Trip.create(creator: 'Riku', destination: 'Tahiti', budget: 5500)

football = Hobby.create(name: 'football')
restaurant = Hobby.create(name: 'restaurant')
apero = Hobby.create(name: 'apero')
randonnée = Hobby.create(name: 'randonnée')

londres = Location.create(name: 'Londres', longitude: 51.5074, latitude: 51.5074)
rome = Location.create(name: 'Rome', longitude: 12.4963655, latitude: 41.9027835)
barcelone = Location.create(name: 'Barcelone', longitude:  2.1734035, latitude: 2.1734)
chartres = Location.create(name: 'Chartres', longitude: 51.5074, latitude: 51.5074)
fontainebleau = Location.create(name: 'Fontainebleau', longitude: 2.70162, latitude: 48.40467599999999)