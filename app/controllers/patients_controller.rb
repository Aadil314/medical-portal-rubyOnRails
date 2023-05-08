class PatientsController < ApplicationController
    def create
        @patient = Patient.new(patient_params)
      
        if @patient.save
          redirect_to root_path, notice: 'Appointment was successfully created.'
        else
          render :new
        end
    end

    def edit
        @appointment = Patient.find(params[:id])
    end

    def update
        @patient = Patient.find(params[:id])
    
        if @patient.update(patient_params_update)
          redirect_to root_path, notice: 'Appointment was successfully updated.'
        else
          render :edit
        end
    end

    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
      
        redirect_to patients_path
    end
      
  
    private
  
    def patient_params_update
        params.require(:patient).permit(:name, :doctor_name, :appointment_date, :appointment_time)
    end

    def patient_params
        params.permit(:name, :doctor_name, :appointment_date, :appointment_time)
    end 
      
end  