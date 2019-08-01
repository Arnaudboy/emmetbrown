# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all
JoinTable.destroy_all

require 'faker'
doctor = []
patient = []
appointment = []
city = []
speciality = []
join_table = []

100.times do
  doctor << Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
end

100.times do
	patient << Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

100.times do
	appointment << Appointment.create!(doctor: doctor.sample, patient: patient.sample)
end

100.times do
	city << City.create!(doctor: doctor.sample, patient: patient.sample, appointment: appointment.sample)
end

100.times do
	speciality << Speciality.create!(speciality: ["Généraliste", "Proctologue", "Dentiste", "Chirurgien vicéral", "Ophtalmologue", "Neurochirurgien", "Adictologue", "Boloss", "Alcool", "Plantation_de_canabis"].sample)
end

100.times do
	join_table << JoinTable.create!(doctor: doctor.sample, speciality: speciality.sample)
end