class CreateClaimPlaces < ActiveRecord::Migration
  def change
    create_table :claim_places do |t|
      t.string :username,              :null => false, :default => ""
      t.string :address,               :null => false, :default => ""
      t.timestamps
    end
  end
end
