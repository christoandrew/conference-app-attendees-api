require_relative 'db/models/attendee'
require_relative 'db/models/conference_attendee'

puts ConferenceAttendee.where(conference_id: 1).map{|c|
  Attendee.find(c.attendee_id)
}