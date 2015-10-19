class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.boolean :litter_trained
      t.boolean :declawed
      t.boolean :outdoor
      t.boolean :bath
      t.boolean :grooming
      t.boolean :medication

      t.timestamps null: false
    end
  end
end
