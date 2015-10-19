class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.integer :size
      t.integer :feeding_frequency
      t.boolean :walk
      t.boolean :playtime
      t.boolean :dietary_needs

      t.timestamps null: false
    end
  end
end
