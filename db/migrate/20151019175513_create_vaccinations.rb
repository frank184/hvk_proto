class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.string :name
      t.boolean :revaccination
      t.integer :days_of_duration

      t.timestamps null: false
    end
  end
end
