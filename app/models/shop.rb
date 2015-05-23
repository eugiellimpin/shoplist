class Shop < ActiveRecord::Base
  mount_uploader :cover, ImageUploader
end
