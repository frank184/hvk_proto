class CreateVeterinaryClinics < ActiveRecord::Migration
  def change
    create_table :veterinary_clinics do |t|
      t.string :name
      t.string :phone_number

      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
