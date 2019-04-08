require "pry"

class Doctor

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end.uniq
  end

end
