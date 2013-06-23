class Product < ActiveRecord::Base
  attr_accessible :claim_palce_id, :description

  belongs_to :claim_place, :class_name => "ClaimPlace", :foreign_key => :owner_user_id
  validates :productName, :presence => true

end
