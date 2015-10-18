class Role < ActiveRecord::Base

  has_many :users

  # Constants
  SYSTEM_ADMINISTRATOR = 1
  EMPLOYEE = 2
  CLIENT = 3
end
