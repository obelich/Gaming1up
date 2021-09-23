class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :registerable,
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:client) if self.roles.blank?
  end
end
