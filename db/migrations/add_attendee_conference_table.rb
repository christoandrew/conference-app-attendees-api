require 'active_record'

class CreateConferenceAttendeesTable < ActiveRecord::Migration[5.2]
  def up
    create_table :conference_attendees do |table|
      table.references :attendee, index: true
      table.integer :conference_id
      table.timestamps
    end
  end
end
