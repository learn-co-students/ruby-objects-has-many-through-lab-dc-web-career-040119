require 'pry'

require_relative "../lib/patient.rb"
require_relative "../lib/appointment.rb"

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
      # binding.pry
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    self.appointments.map do |appointments|
      appointments.patient
    end
  end

end
