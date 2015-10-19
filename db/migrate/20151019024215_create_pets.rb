class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.actable
      t.string :name
      t.string :gender, limit: 1

      t.datetime :birthday

      t.boolean :sprayed_neutered
      t.boolean :medication

      t.timestamps null: false
    end
  end
end
