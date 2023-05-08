class HomeController < ApplicationController

  def index

    if user_signed_in?
      if current_user.doctor?
        render 'doctor'
      elsif current_user.receptionist?
        @appointments = Patient.all
        render 'receptionist'
      end
    end
    
  end
end

