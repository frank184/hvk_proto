class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.boolean :commited

      t.timestamps null: false
    end
  end
end
