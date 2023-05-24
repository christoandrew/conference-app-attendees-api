require 'active_record'
require 'faker'
require_relative 'models/attendee'
require_relative 'models/conference_attendee'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')

10.times do |i|
  Attendee.create!(
    name: Faker::FunnyName.two_word_name,
    age: i,
    email: Faker::Internet.email
  )
end

Attendee.all.each do |attendee|
  ConferenceAttendee.create(attendee_id: attendee.id, conference_id: 1)
end