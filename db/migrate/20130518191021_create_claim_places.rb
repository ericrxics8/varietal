class CreateClaimPlaces < ActiveRecord::Migration
  def change
    create_table :claim_places do |t|
      t.integer :user_id, :null => false, :default => ""
      t.string :address, :null => false, :default => ""
      t.string :store_name, :null => false, :default => ""
      t.integer :owner_user_id, :null => false, :default =>""
      t.string :owner_email, :null => false, :default => ""
      t.integer :owner_phone, :null => false, :default => ""
      t.string :description, :null => false, :default => ""
      t.float :latitude, :null => false, :default => ""
      t.float :longitude, :null => false, :default => ""
      t.boolean :owner, :null => false, :default => false
      t.timestamps
    end
  end
end
