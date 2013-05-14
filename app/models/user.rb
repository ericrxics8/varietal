class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :authentication_keys => [:login]

  attr_accessor :login
  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :login, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body


  before_create :create_login

  def is_admin? is_admin
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  def create_login
    email = self.email.split(/@/)
    login_taken = User.where( :email => email[0]).first

    unless login_taken
      self.login = email[0]
    else
      self.login = self.email
    end
  end


  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end

end
