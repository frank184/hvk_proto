class CreatePetUserJoinTable < ActiveRecord::Migration
  def change
    create_join_table :pets, :users do |t|
      t.index [:pet_id, :user_id]
      t.index [:user_id, :pet_id]
    end
  end
end
