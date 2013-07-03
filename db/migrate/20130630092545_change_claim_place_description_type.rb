class ChangeClaimPlaceDescriptionType < ActiveRecord::Migration
  def change
  	change_column :claim_places, :description,:text
  end
end
