class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :number
      t.string :street
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 6
      t.string :country

      t.timestamps null: false
    end
  end
end
