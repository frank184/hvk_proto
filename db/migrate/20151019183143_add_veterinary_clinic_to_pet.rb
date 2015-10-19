class AddVeterinaryClinicToPet < ActiveRecord::Migration
  def change
    add_reference :pets, :veterinary_clinic, index: true, foreign_key: true
  end
end
