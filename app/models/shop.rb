class Shop < ActiveRecord::Base
  validates :name, presence: true
  mount_uploader :cover, ImageUploader
end
