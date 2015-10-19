class CreatePetVaccinationJoinTable < ActiveRecord::Migration
  def change
    create_join_table :pets, :vaccinations do |t|
      t.index [:pet_id, :vaccination_id]
      t.index [:vaccination_id, :pet_id]
      t.datetime :vaccination_datetime
    end
  end
end
