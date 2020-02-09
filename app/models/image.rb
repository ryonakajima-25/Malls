class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :space, optional: true
  belongs_to :brand, optional: true
end
