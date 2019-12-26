class Space < ApplicationRecord
  belongs_to :developer
  has_many :nices, dependent: :destroy

  mount_uploader :image, ImageUploader

end
