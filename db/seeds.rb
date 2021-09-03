# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@christy = Coach.create name: "Christy Schumm", bio: ""
@natalia = Coach.create name: "Natalia Stanton", bio: ""
@nola = Coach.create name: "Nola Murazik V", bio: ""
@elyssa = Coach.create name: "Elyssa O'Kon", bio: ""
@geovany = Coach.create name: "Dr. Geovany Keebler", bio: ""

Schedule.create title: "Christy Monday", weekday: "Monday" , start: "9:00 AM", end: "5:30 PM", coach: @christy
Schedule.create title: "Christy Tuesday", weekday: "Tuesday", start: "8:00 AM", end: "4:00 PM", coach: @christy
Schedule.create title: "Christy Thursday", weekday: "Thursday", start: "9:00 AM", end: "4:00 PM", coach: @christy
Schedule.create title: "Christy Friday", weekday: "Friday", start: "7:00 AM", end: "2:00 PM", coach: @christy
Schedule.create title: "Natalia Tuesday", weekday: "Tuesday", start: "8:00 AM", end: "10:00 AM", coach: @natalia
Schedule.create title: "Natalia Wednesday", weekday: "Wednesday", start: "11:00 AM", end: "6:00 PM", coach: @natalia
Schedule.create title: "Natalia Saturday", weekday: "Saturday", start: "9:00 AM", end: "3:00 PM", coach: @natalia
Schedule.create title: "Natalia Sunday", weekday: "Sunday", start: "8:00 AM", end: "3:00 PM", coach: @natalia
Schedule.create title: "Nola Monday", weekday: "Monday", start: "8:00 AM", end: "10:00 AM", coach: @nola
Schedule.create title: "Nola Tuesday", weekday: "Tuesday", start: "11:00 AM", end: "1:00 PM", coach: @nola
Schedule.create title: "Nola Wednesday", weekday: "Wednesday", start: "8:00 AM", end: "10:00 AM", coach: @nola
Schedule.create title: "Nola Saturday", weekday: "Saturday", start: "8:00 AM", end: "11:00 AM", coach: @nola
Schedule.create title: "Nola Sunday", weekday: "Sunday", start: "7:00 AM", end: "9:00 AM", coach: @nola
Schedule.create title: "Elyssa Monday", weekday: "Monday", start: "9:00 AM", end: "3:00 PM", coach: @elyssa
Schedule.create title: "Elyssa Tuesday", weekday: "Tuesday", start: "6:00 AM", end: "1:00 PM", coach: @elyssa
Schedule.create title: "Elyssa Wednesday", weekday: "Wednesday", start: "6:00 AM", end: "11:00 AM", coach: @elyssa
Schedule.create title: "Elyssa Friday", weekday: "Friday", start: "8:00 AM", end: "12:00 PM", coach: @elyssa
Schedule.create title: "Elyssa Saturday", weekday: "Saturday", start: "9:00 AM", end: "4:00 PM", coach: @elyssa
Schedule.create title: "Elyssa Sunday", weekday: "Sunday", start: "8:00 AM", end: "10:00 AM", coach: @elyssa
Schedule.create title: "Geovany Thursday 1", weekday: "Thursday", start: "7:00 AM", end: "2:00 PM", coach: @geovany
Schedule.create title: "Geovany Thursday 2", weekday: "Thursday", start: "3:00 PM", end: "5:00 PM", coach: @geovany
