# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: attendee_service.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("attendee_service.proto", :syntax => :proto3) do
    add_message "attendees.AttendeeRequest" do
      optional :id, :uint64, 1
    end
    add_message "attendees.AttendeesRequest" do
      optional :conference_id, :uint64, 1
    end
    add_message "attendees.AttendeeResponse" do
      optional :id, :uint64, 1
      optional :name, :string, 2
      optional :email, :string, 3
      optional :age, :uint64, 4
    end
    add_message "attendees.Attendee" do
      optional :id, :uint64, 1
      optional :name, :string, 2
      optional :email, :string, 3
      optional :age, :uint64, 4
    end
  end
end

module Attendees
  AttendeeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("attendees.AttendeeRequest").msgclass
  AttendeesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("attendees.AttendeesRequest").msgclass
  AttendeeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("attendees.AttendeeResponse").msgclass
  Attendee = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("attendees.Attendee").msgclass
end
