class AddClaimPlacesIdToProducts < ActiveRecord::Migration
  def change
    add_column :products,:claim_place_id, :integer
    add_column :users, :is_admin, :boolean, :default => false
  end
end
