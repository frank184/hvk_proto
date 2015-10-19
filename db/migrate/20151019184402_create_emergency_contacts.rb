class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number

      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
