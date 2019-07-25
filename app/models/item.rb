class Item < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  validates :product_name, presence: true
  validates :product_price, presence: true
  validates :info, presence: true
  validates :description, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
