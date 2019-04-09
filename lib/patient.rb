require_relative "../lib/doctor.rb"
require_relative "../lib/appointment.rb"

class Patient

@@all = []

attr_accessor(:name)

  def initialize(name)
    @name = name
    @doctors = doctors
    @appointments = appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    # binding.pry
    Appointment.new(self, doctor, date)
  end

  # - The `Patient` class needs an instance method, `#appointments`, that iterates
  # through the `Appointment`s array and returns `Appointment`s that belong to the
  # patient.
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  # - The `Patient` class needs an instance method, `#doctors`, that iterates over
  # that patient's `Appointment`s and collects the doctor that belongs to each
  # `Appointment`.
  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end
  #I pattern matched to get this answer.

end
