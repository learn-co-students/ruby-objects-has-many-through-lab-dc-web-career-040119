require 'pry'

require_relative "../lib/doctor.rb"
require_relative "../lib/patient.rb"

class Appointment

attr_accessor(:date, :patient, :doctor)

  @@all = []

  def initialize(date, doctor, patient)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    # binding.pry
    # Patient.all.select do |patient|
    # end
  end
end
