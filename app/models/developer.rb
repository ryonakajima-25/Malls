class Developer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spaces
  has_many :goods, dependent: :destroy

end
