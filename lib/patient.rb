class Patient

    attr_reader :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
      Appointment.all.select do |patient_apointment|
        patient_apointment.patient
      end
    end

    def doctors
      self.appointments.map do |patient_apointment|
        patient_apointment.doctor
      end
    end

end
