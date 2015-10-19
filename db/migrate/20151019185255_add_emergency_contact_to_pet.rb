class AddEmergencyContactToPet < ActiveRecord::Migration
  def change
    add_reference :pets, :emergency_contact, index: true, foreign_key: true
  end
end
