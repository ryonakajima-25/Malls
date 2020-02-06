class Brand < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes, dependent: :destroy

  def like_user(id)
    likes.find_by(user_id: id)
  end

end
