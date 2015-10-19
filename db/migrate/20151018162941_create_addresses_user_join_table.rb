class CreateAddressesUserJoinTable < ActiveRecord::Migration
  def change
    create_join_table :addresses, :users do |t|
      t.index [:address_id, :user_id]
      t.index [:user_id, :address_id]
    end
  end
end
