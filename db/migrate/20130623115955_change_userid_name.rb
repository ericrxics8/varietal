class ChangeUseridName < ActiveRecord::Migration
  def change
    rename_column :claim_places, :userid, :user_id
  end
end
