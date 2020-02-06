class Like < ApplicationRecord
  belongs_to :user
  belongs_to :space, optional: true
  belongs_to :brand, optional: true
end
