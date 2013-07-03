class Product < ActiveRecord::Base

  belongs_to :owner, :class_name => "User", :foreign_key => :owner_user_id
  belongs_to :user, :class_name => "User", :foreign_key => :user_id
  belongs_to :store, :class_name => "ClaimPlace", :foreign_key => :claim_place_id
  #validates :productName, :presence => true

  def editable_by?(user)
    user && user == owner
  end

end
