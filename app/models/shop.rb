class Shop < ActiveRecord::Base
  validates :name, presence: true
  validates :description, length: { maximum: 140 }
  mount_uploader :cover, ImageUploader
end
