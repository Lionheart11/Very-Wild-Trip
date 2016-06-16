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

p1 = Participate.create(trip_id: london.id, participant_id: melanie.id)
p2 = Participate.create(trip_id: london.id, participant_id: richard.id)
p3 = Participate.create(trip_id: paris.id, participant_id: melanie.id)
p4 = Participate.create(trip_id: paris.id, participant_id: dorian.id)
p5 = Participate.create(trip_id: paris.id, participant_id: alex.id)
p6 = Participate.create(trip_id: tahiti.id, participant_id: dorian.id)
p7 = Participate.create(trip_id: tahiti.id, participant_id: richard.id)

football = Hobby.create(name: 'football')
restaurant = Hobby.create(name: 'restaurant')
apero = Hobby.create(name: 'apero')
randonnée = Hobby.create(name: 'randonnée')
