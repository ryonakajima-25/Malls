class Developer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spaces
  has_many :goods, dependent: :destroy

  def already_gooded?(brand)
    self.goods.exists?(brand_id: brand.id)
  end
end
