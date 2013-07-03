class ClaimPlace < ActiveRecord::Base
  validates :storeName, :presence => true
  validates :address, :presence => true
  # validates_presence_of :latitude
  # validates_presence_of :longitude

  belongs_to :claimer, :class_name => "User", :foreign_key => :userid
  belongs_to :owner, :class_name => "User", :foreign_key => :owner_user_id

  has_many :products

  def editable_by?(user)
     user && user == claimer
  end


end
