class User < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
