class User < ApplicationRecord
  has_many :roles_users
  has_many :roles, through: :roles_users

  validates_uniqueness_of :name
end
