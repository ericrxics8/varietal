class AddIsAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean, :default => false
    add_column :users, :username, :string
    add_column :users, :latitude,  :float
    add_column :users, :longitude, :float
    add_column :users, :gmaps, :boolean
  end
end
