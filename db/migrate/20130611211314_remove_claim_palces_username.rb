class RemoveClaimPalcesUsername < ActiveRecord::Migration
  def change
  	remove_column :claim_places, :username

  	add_column :claim_places, :owner_user_id, :integer
  end
end
