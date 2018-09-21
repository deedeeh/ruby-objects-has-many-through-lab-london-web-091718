class Doctor

  attr_accessor :name, :appointments

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    # iterates through all appointments and finds those belonging to this doctor.
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients
    # that iterates over that doctor's appointments and collects the patient that belongs to each appointment.
    appointments.map {|app| app.patient}
  end

end
