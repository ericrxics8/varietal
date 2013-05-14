class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
  end

  def self.up
    add_column :users, :username, :string
  end
  def self.down
    remove_column :users, :username
  end

end
