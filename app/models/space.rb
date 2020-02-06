class Space < ApplicationRecord
  # mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  def like_user(id)
    likes.find_by(user_id: id)
  end

  enum sector: {
    retail:  1,  # 物販店舗
    food:    2,  # 飲食店舗
    service: 3   # サービス店舗
  }


end
