class ChangeClaimPlacesAttr < ActiveRecord::Migration
  def change
    change_column :claim_places, :ownerEmail,:string,:default => "", :null => true
    change_column :claim_places, :ownerPhone,:string,:default => "", :null => true
    change_column :claim_places, :description,:string,:default => "", :null => true
    change_column :claim_places, :latitude,:float,:default => 0, :null => true
    change_column :claim_places, :longitude,:float,:default => 0, :null => true
    change_column :claim_places, :owner,:boolean,:default => false, :null => true
  end	
end
