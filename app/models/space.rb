class Space < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :developer
end
