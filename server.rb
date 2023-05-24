require_relative 'lib/grpc/attendee_service_services_pb'
require_relative 'db/models/attendee'
require_relative 'db/models/conference_attendee'


class AttendeeServer < Attendees::Attendees::Service
  def get_attendee(attendee_req, _unused_call)
    puts attendee_req.id
    a = Attendee.find_by(id: attendee_req.id)
    Attendees::AttendeeResponse.new(id: a.id, name: a.name, email: a.email, age: a.age)
  end

  def get_conference_attendees(attendees_req, _unused_call)
    puts attendees_req
    attendees = ConferenceAttendee.attendees(attendees_req.conference_id)
    attendees.map do |a|
      Attendees::Attendee.new(id: a.id, name: a.name, email: a.email, age: a.age)
    end
  end
end


def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(AttendeeServer)
  # Runs the server with SIGHUP, SIGINT and SIGTERM signal handlers to
  #   gracefully shutdown.
  # User could also choose to run server via call to run_till_terminated
  s.run_till_terminated_or_interrupted([1, 'int', 'SIGTERM'])
end

main