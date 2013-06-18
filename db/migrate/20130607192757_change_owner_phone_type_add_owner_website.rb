class ChangeOwnerPhoneTypeAddOwnerWebsite < ActiveRecord::Migration
  def change
    change_column :claim_places, :ownerPhone, :string

    add_column :claim_places, :ownerWebsite, :string
  end
end
