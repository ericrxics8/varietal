class ClaimPlace < ActiveRecord::Base
  # attr_accessible :title, :body
  #validates :lat, :presence =>true
  #validates :lon, :presence =>true
  validates :title, :presence => true
  validates_presence_of :latitude
  validates_presence_of :longitude

  belongs_to :claimer, :class_name => "User", :foreign_key => :user_id
  belongs_to :owner, :class_name => "User", :foreign_key => :owner_user_id
  def editable_by?(user)
    user && user == owner
  end


end
