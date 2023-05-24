require 'active_record'
require_relative 'migrations/create_attendees_table'
require_relative 'migrations/add_attendee_conference_table'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')

CreateUserTable.migrate(:up)
CreateConferenceAttendeesTable.migrate(:up)