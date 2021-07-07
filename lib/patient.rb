class Patient
  attr_accessor :name
  @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
   end

   def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self

    end
  end

   def doctors
    Appointment.all.map do |patient|
      patient.doctor
    # appointments.map(&:doctor)
    end
  end
end


# class Patient
#   attr_accessor :name
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def new_appointment(doctor, date)
#     Appointment.new(self, doctor, date)
#   end
#
#   def appointments
#     Appointment.all.select { |appointment| appointment.patient == self }
#   end
#
#   def doctors
#     appointments.map(&:doctor)
#   end
# end
