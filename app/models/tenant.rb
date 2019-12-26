class Tenant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :brands
  has_many :nices, dependent: :destroy

  def already_niced?(space)
    self.nices.exists?(space_id: space.id)
  end
end
