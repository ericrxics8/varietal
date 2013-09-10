class AddClaimPlacesIdToProducts < ActiveRecord::Migration
  def change
    add_column :products,:claim_place_id, :integer
  end
end
