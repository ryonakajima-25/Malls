class Space < ApplicationRecord
  validates :location, :mall_name, :floor, :block_number, :area, :rent,  presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :images, dependent: :destroy
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
