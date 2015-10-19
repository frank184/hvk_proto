class Pet < ActiveRecord::Base
  ### RELATIONSHIPS ###
  actable
  belongs_to :veterinary_clinic
  belongs_to :emergency_contact
  has_and_belongs_to_many :users
  has_and_belongs_to_many :vaccinations
  has_and_belongs_to_many :notes

  ### VALIDATION ###
  validates_presence_of :actable_type

  validates_presence_of :users
  #validates_presence_of :vaccinations
  validates_presence_of :veterinary_clinic
  validates_presence_of :emergency_contact

  validates_presence_of :name
  validates_presence_of :gender
  validates_presence_of :birthday
  validates_presence_of :sprayed_neutered
end
