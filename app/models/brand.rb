class Brand < ApplicationRecord
  validates :name, :category_large, :category_small, :target_sex, :target_age, :area_max, :area_min,  presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  def like_user(id)
    likes.find_by(user_id: id)
  end

end
