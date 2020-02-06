class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spaces
  has_many :brands
  has_many :likes, dependent: :destroy
  has_many :liked_spaces, through: :likes, source: :space
  has_many :liked_brands, through: :likes, source: :brand

  enum genre: { 
    developer:  1,  # 商業施設
    tenant:     2   # 出店者
  }



end
