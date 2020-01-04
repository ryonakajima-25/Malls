class Brand < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :tenant
  has_many :goods, dependent: :destroy

  def good_developer(developer_id)
    goods.find_by(developer_id: developer_id)
  end
end
