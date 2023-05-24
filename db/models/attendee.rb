require 'active_record'
require_relative 'application_record'

# Can override table name and primary key
class Attendee < ApplicationRecord
  self.table_name = 'attendees'
  self.primary_key = 'id'

  def to_s
    name
  end
end