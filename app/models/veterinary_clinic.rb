class VeterinaryClinic < ActiveRecord::Base
  ### RELATIONSHIPS ###
  has_one :veterinary_clinic
  has_one :emergency_contact

  belongs_to :address
  has_many :pets

  ### VALIDATION ###
  validates_presence_of :phone_number
  validates_presence_of :address
  validates_presence_of :name
end
