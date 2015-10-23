class ChangeSprayedNeuteuredToFixedForPets < ActiveRecord::Migration
  def change
    rename_column :pets, :sprayed_neutered, :fixed
  end
end
