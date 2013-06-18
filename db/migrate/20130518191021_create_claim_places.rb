class CreateClaimPlaces < ActiveRecord::Migration
  def change
    create_table :claim_places do |t|
      t.integer :userid, :null => false, :default => ""
      t.string :address, :null => false, :default => ""
      t.string :storeName, :null => false, :default => ""
      t.string :ownerEmail, :null => false, :default => ""
      t.integer :ownerPhone, :null => false, :default => ""
      t.string :description, :null => false, :default => ""
      t.float :latitude, :null => false, :default => ""
      t.float :longitude, :null => false, :default => ""
      t.boolean :owner, :null => false, :default => false
      t.timestamps
    end
  end
end
