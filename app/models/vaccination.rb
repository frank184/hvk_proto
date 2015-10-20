class Vaccination < ActiveRecord::Base
  ### RELATIONSHIPS ###
  has_many :pets_vaccinations
  has_many :pets, through: :pets_vaccinations

  ### VALIDATION ###
  validates_presence_of :name
  validates_presence_of :revaccination
  validates_presence_of :days_of_duration, if: :revaccination?
end
