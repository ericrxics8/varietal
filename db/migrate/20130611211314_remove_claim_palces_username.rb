class RemoveClaimPalcesUsername < ActiveRecord::Migration
  def change
  	
  	add_column :claim_places, :owner_user_id, :integer
  end
end
