class Vaccination < ActiveRecord::Base
  ### RELATIONSHIPS ###
  has_and_belongs_to_many :pets

  ### VALIDATION ###
  validates_presence_of :name
  validates_presence_of :revaccination
  validates_presence_of :days_of_duration, if: :revaccination?
end
