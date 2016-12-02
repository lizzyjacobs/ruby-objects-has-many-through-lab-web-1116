class Doctor

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  # def appointments
  #   @appointments
  # end

  def add_appointment(appt)
    appointments << appt
    appt.doctor = self
  end



  def patients
    self.appointments.collect do |appt|
      appt.patient
    end
  end

end
