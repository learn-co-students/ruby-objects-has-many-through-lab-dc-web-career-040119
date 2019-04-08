require_relative "../lib/patient.rb"
require_relative "../lib/appointment.rb"


class Doctor

attr_accessor(:name)

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
   #  Appointment.all.select do |appointment|
   # end
  end

  def self.all
    @@all
  end

end
