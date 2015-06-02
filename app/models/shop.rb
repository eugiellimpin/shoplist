class Shop < ActiveRecord::Base
  mount_uploader :cover, ImageUploader

  validates :name, presence: true
  validates :description, length: { maximum: 140 }
  validate :at_least_one_social_media

  def at_least_one_social_media
    if website.blank? && facebook.blank? && instagram.blank?
      errors[:website] << ("please provide at least one")
    end
  end
end
