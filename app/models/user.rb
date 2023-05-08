class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # adding extra attributes to user table
  attribute :type, :string
  attribute :username, :string


  # method doctor? checks if the user type is a doctor
  def doctor?
    type == "Doctor"
  end
  # method to checks if the user type is a receptionist
  def receptionist?
    type == "Receptionist"
  end

end
