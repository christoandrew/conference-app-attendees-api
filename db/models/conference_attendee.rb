require_relative 'attendee'

class ConferenceAttendee < ApplicationRecord
  self.table_name = "conference_attendees"

  def self.attendees(conference_id)
    where(conference_id: conference_id).map{|c|
      Attendee.find(c.attendee_id)
    }
  end
end