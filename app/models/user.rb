class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  has_one :profile

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_an_empty_profile

  def create_an_empty_profile
    Profile.create(user_id: self.id)
  end
 
end
