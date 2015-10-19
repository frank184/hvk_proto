class CreatePetNoteJoinTable < ActiveRecord::Migration
  def change
    create_join_table :pets, :notes do |t|
      t.index [:pet_id, :note_id]
      t.index [:note_id, :pet_id]
    end
  end
end
