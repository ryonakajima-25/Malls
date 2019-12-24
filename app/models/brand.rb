class Brand < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :tenant
  has_many :goods, dependent: :destroy
end
