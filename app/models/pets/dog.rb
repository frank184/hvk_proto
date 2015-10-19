class Dog < ActiveRecord::Base
  ### RELATIONSHIPS ###
  acts_as :pet

  ### VALIDATION ###
  validates_presence_of :size

  ### CONSTANTS ###
  SMALL  = 1
  MEDIUM = 2
  LARGE  = 3
end
