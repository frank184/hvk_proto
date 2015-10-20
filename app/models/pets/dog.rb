class Dog < ActiveRecord::Base
  ### RELATIONSHIPS ###
  acts_as :pet

  ### CONSTANTS ###
  SMALL  = 1
  MEDIUM = 2
  LARGE  = 3

  ### SCOPES ###

  ### VALIDATION ###
  validates_presence_of :size




end
