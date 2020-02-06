class Brand < ApplicationRecord
  # mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  def like_user(id)
    likes.find_by(user_id: id)
  end

end
