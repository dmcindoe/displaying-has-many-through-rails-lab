class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    
  def doctor_name=(name)
    doctor = Doctor.find_or_create_by(name: name)
  end
       
  def doctor_name
    doctor ? doctor.name : nil
  end
       
  def patient_name=(name)
    patient = Patient.find_or_create_by(name: name)
  end
       
  def patient_name
    patient ? patient.name : nil
  end
end
