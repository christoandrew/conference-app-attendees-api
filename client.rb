require 'grpc'
require_relative 'lib/grpc/attendee_service_services_pb'

def main
  hostname = ARGV.size > 1 ?  ARGV[1] : 'localhost:50051'
  stub = Attendees::Attendees::Stub.new(hostname, :this_channel_is_insecure)
  begin
    attendees = stub.get_conference_attendees(Attendees::AttendeesRequest.new(conference_id: 1))
    list = attendees.to_a.map(&:to_json)
    puts list
  rescue StandardError => e
    abort "ERROR: #{e.message}"
  end
end

main