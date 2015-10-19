class EmergencyContact < ActiveRecord::Base
  ### RELATIONSHIPS ###
  belongs_to :address
  has_many :pets

  ### VALIDATION ###
  validates_presence_of :phone_number
  validates_presence_of :address
end
