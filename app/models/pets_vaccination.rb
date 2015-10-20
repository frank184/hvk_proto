class PetsVaccination < ActiveRecord::Base
  belongs_to :pet
  belongs_to :vaccination
end
